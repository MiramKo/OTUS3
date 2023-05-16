//
// PlatformParentSingle.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PlatformParentSingle: Codable, JSONEncodable, Hashable {

    static let nameRule = StringRule(minLength: 1, maxLength: 100, pattern: nil)
    static let slugRule = StringRule(minLength: 1, maxLength: nil, pattern: "/^[-a-zA-Z0-9_]+$/")
    public var id: Int?
    public var name: String
    public var slug: String?
    public var platforms: [Platform]

    public init(id: Int? = nil, name: String, slug: String? = nil, platforms: [Platform]) {
        self.id = id
        self.name = name
        self.slug = slug
        self.platforms = platforms
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case slug
        case platforms
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encode(platforms, forKey: .platforms)
    }
}

