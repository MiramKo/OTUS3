//
// Genre.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Genre: Codable, JSONEncodable, Hashable {

    static let nameRule = StringRule(minLength: 1, maxLength: 100, pattern: nil)
    static let slugRule = StringRule(minLength: 1, maxLength: nil, pattern: "/^[-a-zA-Z0-9_]+$/")
    static let imageBackgroundRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var id: Int?
    public var name: String
    public var slug: String?
    public var gamesCount: Int?
    public var imageBackground: String?

    public init(id: Int? = nil, name: String, slug: String? = nil, gamesCount: Int? = nil, imageBackground: String? = nil) {
        self.id = id
        self.name = name
        self.slug = slug
        self.gamesCount = gamesCount
        self.imageBackground = imageBackground
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case slug
        case gamesCount = "games_count"
        case imageBackground = "image_background"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(gamesCount, forKey: .gamesCount)
        try container.encodeIfPresent(imageBackground, forKey: .imageBackground)
    }
}

