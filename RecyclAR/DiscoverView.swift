//
//  DiscoverView.swift
//  RecyclAR
//
//  Created by Philipp Hemkemeyer on 3/10/23.
//

import SwiftUI

struct DiscoverView: View {
    var body: some View {
        StoreCardView(imageName: "publix-store", name: "Publix Super Market at The Plaza Midtown", location: "950 W Peachtree St NW, Atlanta, GA 30309")
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
