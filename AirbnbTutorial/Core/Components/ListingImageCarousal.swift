//
//  ListingImageCarousel.swift
//  AirbnbTutorial
//
//  Created by 李伟 on 2024/9/9.
//

import SwiftUI

struct ListingImageCarousal: View {
    let listing : Listing
    var body: some View {
        TabView {
            ForEach(listing.imageURLs, id: \.self) { index in
                            Image(index)
                                .resizable()
                                .scaledToFill()
                        }
                    }

        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarousal(listing: DeveloperPreview.instance.listings[0])
}
