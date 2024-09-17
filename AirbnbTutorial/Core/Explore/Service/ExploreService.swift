//
//  ExploreService.swift
//  AirbnbTutorial
//
//  Created by 李伟 on 2024/9/17.
//

import Foundation

class ExploreService {

    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.instance.listings
    }
}
