//
// Person.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Person: Codable, JSONEncodable, Hashable {

    static let nameRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let slugRule = StringRule(minLength: 1, maxLength: nil, pattern: "/^[-a-zA-Z0-9_]+$/")
    static let imageBackgroundRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var id: Int?
    public var name: String
    public var slug: String?
    public var image: String?
    public var imageBackground: String?
    public var gamesCount: Int?

    public init(id: Int? = nil, name: String, slug: String? = nil, image: String? = nil, imageBackground: String? = nil, gamesCount: Int? = nil) {
        self.id = id
        self.name = name
        self.slug = slug
        self.image = image
        self.imageBackground = imageBackground
        self.gamesCount = gamesCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case slug
        case image
        case imageBackground = "image_background"
        case gamesCount = "games_count"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(image, forKey: .image)
        try container.encodeIfPresent(imageBackground, forKey: .imageBackground)
        try container.encodeIfPresent(gamesCount, forKey: .gamesCount)
    }
}

