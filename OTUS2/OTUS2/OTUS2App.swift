//
//  OTUS2App.swift
//  OTUS2
//
//  Created by Михаил Костров on 07.05.2023.
//

import SwiftUI
import NetworkLayer

@main
struct OTUS2App: App {
    init() {
        let networkService: NetworkServiceProtocol = NetworkService()
        ServiceLocator.shared.add(service: networkService)
    }
    
    var body: some Scene {
        WindowGroup {
            RootAppView()
        }
    }
}
