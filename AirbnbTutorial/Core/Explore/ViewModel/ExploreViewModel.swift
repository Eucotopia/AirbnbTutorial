//
//  ExploreViewModel.swift
//  AirbnbTutorial
//
//  Created by 李伟 on 2024/9/17.
//

import Foundation

class ExploreViewModel :ObservableObject {
    @Published var listings = [Listing]()

    @Published var searchLocation : String = ""
    
    private let service : ExploreService
    private var listingsCopy = [Listing]()
    init(service : ExploreService) {
        self.service = service
        Task {
            await fetchListings()
        }
    }
    func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
            self.listingsCopy = listings
        } catch {
            print("DEBUG FAiled")
        }
    }
    func updateLocation() {

        let filterdListings = listings.filter(
            {
                $0.city.lowercased() == searchLocation.lowercased() ||
                $0.state.lowercased() == searchLocation.lowercased()
            }
        )
        self.listings = filterdListings.isEmpty ? listingsCopy : filterdListings
    }
}

