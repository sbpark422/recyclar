//
//  DiscoverView.swift
//  RecyclAR
//
//  Created by Philipp Hemkemeyer on 3/10/23.
//

import SwiftUI

struct DiscoverView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            TopBarView()
                .padding(.top, 9)
                .padding(.bottom, 30)
            Divider()
            
            Spacer()
            Text("Nearby Stores")
                .font(.title3)
            StoreCardView(imageName: "publix-store", name: "Publix Super Market at The Plaza Midtown", location: "950 W Peachtree St NW, Atlanta, GA 30309")
        }
        .padding(.horizontal, 28) // Overall side padding of app
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
        
}
