//
//  ServiceLocator.swift
//  
//
//  Created by Михаил Костров on 17.05.2023.
//

import Foundation

public final class ServiceLocator {
    private lazy var services: [String : Any] = [:]
    public static let shared = ServiceLocator()
    
    private init() {}
    
    public func add<T>(service: T) {
        let key = getTypeName(T.self)
        services[key] = service
    }
    
    public func getService<T>() -> T? {
        let key = getTypeName(T.self)
        return services[key] as? T
    }
    
    private func getTypeName(_ someType: Any) -> String {
        (someType is Any.Type) ? "\(someType)" : "\(type(of: someType))"
    }
}

@propertyWrapper
public struct Injected<Service> {
    private var service: Service?
    
    public init() {}
    
    public var wrappedValue: Service? {
        mutating get {
            if service == nil {
                service = ServiceLocator.shared.getService()
            }
            return service
        }
    }
    
    public var projectedValue: Injected<Service> {
        mutating set {
            self = newValue
        }
        get {
            return self
        }
    }
}

