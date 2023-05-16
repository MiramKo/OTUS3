//
// GameSingle.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GameSingle: Codable, JSONEncodable, Hashable {

    static let slugRule = StringRule(minLength: 1, maxLength: nil, pattern: "/^[-a-zA-Z0-9_]+$/")
    static let nameRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let nameOriginalRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let descriptionRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let websiteRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let redditUrlRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let redditNameRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let redditDescriptionRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let redditLogoRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let metacriticUrlRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var id: Int?
    public var slug: String?
    public var name: String?
    public var nameOriginal: String?
    public var description: String?
    public var metacritic: Int?
    public var metacriticPlatforms: [GamePlatformMetacritic]?
    public var released: Date?
    public var tba: Bool?
    public var updated: Date?
    public var backgroundImage: String?
    public var backgroundImageAdditional: String?
    public var website: String?
    public var rating: Double
    public var ratingTop: Int?
    public var ratings: AnyCodable?
    public var reactions: AnyCodable?
    public var added: Int?
    public var addedByStatus: AnyCodable?
    /** in hours */
    public var playtime: Int?
    public var screenshotsCount: Int?
    public var moviesCount: Int?
    public var creatorsCount: Int?
    public var achievementsCount: Int?
    public var parentAchievementsCount: String?
    /** For example \"https://www.reddit.com/r/uncharted/\" or \"uncharted\" */
    public var redditUrl: String?
    public var redditName: String?
    public var redditDescription: String?
    public var redditLogo: String?
    public var redditCount: Int?
    public var twitchCount: String?
    public var youtubeCount: String?
    public var reviewsTextCount: String?
    public var ratingsCount: Int?
    public var suggestionsCount: Int?
    public var alternativeNames: [String]?
    /** For example \"http://www.metacritic.com/game/playstation-4/the-witcher-3-wild-hunt\" */
    public var metacriticUrl: String?
    public var parentsCount: Int?
    public var additionsCount: Int?
    public var gameSeriesCount: Int?
    public var esrbRating: GameEsrbRating?
    public var platforms: [GamePlatformsInner]?

    public init(id: Int? = nil, slug: String? = nil, name: String? = nil, nameOriginal: String? = nil, description: String? = nil, metacritic: Int? = nil, metacriticPlatforms: [GamePlatformMetacritic]? = nil, released: Date? = nil, tba: Bool? = nil, updated: Date? = nil, backgroundImage: String? = nil, backgroundImageAdditional: String? = nil, website: String? = nil, rating: Double, ratingTop: Int? = nil, ratings: AnyCodable? = nil, reactions: AnyCodable? = nil, added: Int? = nil, addedByStatus: AnyCodable? = nil, playtime: Int? = nil, screenshotsCount: Int? = nil, moviesCount: Int? = nil, creatorsCount: Int? = nil, achievementsCount: Int? = nil, parentAchievementsCount: String? = nil, redditUrl: String? = nil, redditName: String? = nil, redditDescription: String? = nil, redditLogo: String? = nil, redditCount: Int? = nil, twitchCount: String? = nil, youtubeCount: String? = nil, reviewsTextCount: String? = nil, ratingsCount: Int? = nil, suggestionsCount: Int? = nil, alternativeNames: [String]? = nil, metacriticUrl: String? = nil, parentsCount: Int? = nil, additionsCount: Int? = nil, gameSeriesCount: Int? = nil, esrbRating: GameEsrbRating? = nil, platforms: [GamePlatformsInner]? = nil) {
        self.id = id
        self.slug = slug
        self.name = name
        self.nameOriginal = nameOriginal
        self.description = description
        self.metacritic = metacritic
        self.metacriticPlatforms = metacriticPlatforms
        self.released = released
        self.tba = tba
        self.updated = updated
        self.backgroundImage = backgroundImage
        self.backgroundImageAdditional = backgroundImageAdditional
        self.website = website
        self.rating = rating
        self.ratingTop = ratingTop
        self.ratings = ratings
        self.reactions = reactions
        self.added = added
        self.addedByStatus = addedByStatus
        self.playtime = playtime
        self.screenshotsCount = screenshotsCount
        self.moviesCount = moviesCount
        self.creatorsCount = creatorsCount
        self.achievementsCount = achievementsCount
        self.parentAchievementsCount = parentAchievementsCount
        self.redditUrl = redditUrl
        self.redditName = redditName
        self.redditDescription = redditDescription
        self.redditLogo = redditLogo
        self.redditCount = redditCount
        self.twitchCount = twitchCount
        self.youtubeCount = youtubeCount
        self.reviewsTextCount = reviewsTextCount
        self.ratingsCount = ratingsCount
        self.suggestionsCount = suggestionsCount
        self.alternativeNames = alternativeNames
        self.metacriticUrl = metacriticUrl
        self.parentsCount = parentsCount
        self.additionsCount = additionsCount
        self.gameSeriesCount = gameSeriesCount
        self.esrbRating = esrbRating
        self.platforms = platforms
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case slug
        case name
        case nameOriginal = "name_original"
        case description
        case metacritic
        case metacriticPlatforms = "metacritic_platforms"
        case released
        case tba
        case updated
        case backgroundImage = "background_image"
        case backgroundImageAdditional = "background_image_additional"
        case website
        case rating
        case ratingTop = "rating_top"
        case ratings
        case reactions
        case added
        case addedByStatus = "added_by_status"
        case playtime
        case screenshotsCount = "screenshots_count"
        case moviesCount = "movies_count"
        case creatorsCount = "creators_count"
        case achievementsCount = "achievements_count"
        case parentAchievementsCount = "parent_achievements_count"
        case redditUrl = "reddit_url"
        case redditName = "reddit_name"
        case redditDescription = "reddit_description"
        case redditLogo = "reddit_logo"
        case redditCount = "reddit_count"
        case twitchCount = "twitch_count"
        case youtubeCount = "youtube_count"
        case reviewsTextCount = "reviews_text_count"
        case ratingsCount = "ratings_count"
        case suggestionsCount = "suggestions_count"
        case alternativeNames = "alternative_names"
        case metacriticUrl = "metacritic_url"
        case parentsCount = "parents_count"
        case additionsCount = "additions_count"
        case gameSeriesCount = "game_series_count"
        case esrbRating = "esrb_rating"
        case platforms
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(nameOriginal, forKey: .nameOriginal)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(metacritic, forKey: .metacritic)
        try container.encodeIfPresent(metacriticPlatforms, forKey: .metacriticPlatforms)
        try container.encodeIfPresent(released, forKey: .released)
        try container.encodeIfPresent(tba, forKey: .tba)
        try container.encodeIfPresent(updated, forKey: .updated)
        try container.encodeIfPresent(backgroundImage, forKey: .backgroundImage)
        try container.encodeIfPresent(backgroundImageAdditional, forKey: .backgroundImageAdditional)
        try container.encodeIfPresent(website, forKey: .website)
        try container.encode(rating, forKey: .rating)
        try container.encodeIfPresent(ratingTop, forKey: .ratingTop)
        try container.encodeIfPresent(ratings, forKey: .ratings)
        try container.encodeIfPresent(reactions, forKey: .reactions)
        try container.encodeIfPresent(added, forKey: .added)
        try container.encodeIfPresent(addedByStatus, forKey: .addedByStatus)
        try container.encodeIfPresent(playtime, forKey: .playtime)
        try container.encodeIfPresent(screenshotsCount, forKey: .screenshotsCount)
        try container.encodeIfPresent(moviesCount, forKey: .moviesCount)
        try container.encodeIfPresent(creatorsCount, forKey: .creatorsCount)
        try container.encodeIfPresent(achievementsCount, forKey: .achievementsCount)
        try container.encodeIfPresent(parentAchievementsCount, forKey: .parentAchievementsCount)
        try container.encodeIfPresent(redditUrl, forKey: .redditUrl)
        try container.encodeIfPresent(redditName, forKey: .redditName)
        try container.encodeIfPresent(redditDescription, forKey: .redditDescription)
        try container.encodeIfPresent(redditLogo, forKey: .redditLogo)
        try container.encodeIfPresent(redditCount, forKey: .redditCount)
        try container.encodeIfPresent(twitchCount, forKey: .twitchCount)
        try container.encodeIfPresent(youtubeCount, forKey: .youtubeCount)
        try container.encodeIfPresent(reviewsTextCount, forKey: .reviewsTextCount)
        try container.encodeIfPresent(ratingsCount, forKey: .ratingsCount)
        try container.encodeIfPresent(suggestionsCount, forKey: .suggestionsCount)
        try container.encodeIfPresent(alternativeNames, forKey: .alternativeNames)
        try container.encodeIfPresent(metacriticUrl, forKey: .metacriticUrl)
        try container.encodeIfPresent(parentsCount, forKey: .parentsCount)
        try container.encodeIfPresent(additionsCount, forKey: .additionsCount)
        try container.encodeIfPresent(gameSeriesCount, forKey: .gameSeriesCount)
        try container.encodeIfPresent(esrbRating, forKey: .esrbRating)
        try container.encodeIfPresent(platforms, forKey: .platforms)
    }
}
