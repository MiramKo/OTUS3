//
// ScreenShot.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ScreenShot: Codable, JSONEncodable, Hashable {

    public var id: Int?
    /** An image file with size up to 20 MB. */
    public var image: String?
    /** Set image as hidden or visible. */
    public var hidden: Bool? = false
    public var width: Int?
    public var height: Int?

    public init(id: Int? = nil, image: String? = nil, hidden: Bool? = false, width: Int? = nil, height: Int? = nil) {
        self.id = id
        self.image = image
        self.hidden = hidden
        self.width = width
        self.height = height
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case image
        case hidden
        case width
        case height
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(image, forKey: .image)
        try container.encodeIfPresent(hidden, forKey: .hidden)
        try container.encodeIfPresent(width, forKey: .width)
        try container.encodeIfPresent(height, forKey: .height)
    }
}

