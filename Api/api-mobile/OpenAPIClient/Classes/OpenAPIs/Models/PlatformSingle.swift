//
// PlatformSingle.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PlatformSingle: Codable, JSONEncodable, Hashable {

    static let nameRule = StringRule(minLength: 1, maxLength: 100, pattern: nil)
    static let slugRule = StringRule(minLength: 1, maxLength: nil, pattern: "/^[-a-zA-Z0-9_]+$/")
    static let yearStartRule = NumericRule<Int>(minimum: 0, exclusiveMinimum: false, maximum: 32767, exclusiveMaximum: false, multipleOf: nil)
    static let yearEndRule = NumericRule<Int>(minimum: 0, exclusiveMinimum: false, maximum: 32767, exclusiveMaximum: false, multipleOf: nil)
    public var id: Int?
    public var name: String
    public var slug: String?
    public var gamesCount: Int?
    public var imageBackground: String?
    public var description: String?
    public var image: String?
    public var yearStart: Int?
    public var yearEnd: Int?

    public init(id: Int? = nil, name: String, slug: String? = nil, gamesCount: Int? = nil, imageBackground: String? = nil, description: String? = nil, image: String? = nil, yearStart: Int? = nil, yearEnd: Int? = nil) {
        self.id = id
        self.name = name
        self.slug = slug
        self.gamesCount = gamesCount
        self.imageBackground = imageBackground
        self.description = description
        self.image = image
        self.yearStart = yearStart
        self.yearEnd = yearEnd
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case slug
        case gamesCount = "games_count"
        case imageBackground = "image_background"
        case description
        case image
        case yearStart = "year_start"
        case yearEnd = "year_end"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(gamesCount, forKey: .gamesCount)
        try container.encodeIfPresent(imageBackground, forKey: .imageBackground)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(image, forKey: .image)
        try container.encodeIfPresent(yearStart, forKey: .yearStart)
        try container.encodeIfPresent(yearEnd, forKey: .yearEnd)
    }
}

