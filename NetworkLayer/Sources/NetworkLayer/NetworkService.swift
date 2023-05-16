//
//  NetworkService.swift
//  
//
//  Created by Михаил Костров on 17.05.2023.
//

import Foundation

public protocol NetworkServiceProtocol {
    func gamesList(page: Int,
                   pageSize: Int,
                   platforms: String,
                   completion: @escaping ((_ data: GamesList200Response?, _ error: Error?) -> Void))
    
    func gamesAchievementsRead(id: String,
                               completion: @escaping ((_ data: ParentAchievement?, _ error: Error?) -> Void))
}

public final class NetworkService: NetworkServiceProtocol {
    public init() {}
    
    public func gamesList(page: Int,
                   pageSize: Int,
                   platforms: String,
                   completion: @escaping ((_ data: GamesList200Response?, _ error: Error?) -> Void)) {
        GamesAPI.gamesList(page: page, pageSize: pageSize, platforms: platforms, completion: completion)
    }
    
    public func gamesAchievementsRead(id: String,
                               completion: @escaping ((_ data: ParentAchievement?, _ error: Error?) -> Void)) {
        GamesAPI.gamesAchievementsRead(id: id, completion: completion)
    }
}
