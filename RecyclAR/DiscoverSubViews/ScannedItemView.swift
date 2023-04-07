//
//  ScannedItemView.swift
//  RecyclAR
//
//  Created by Philipp Hemkemeyer on 4/6/23.
//

import SwiftUI

struct ScannedItemView: View {
    
    let imageName: String
    let name: String
    
    var body: some View {
        VStack(spacing: 9.0) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipped()
                .padding(10)
                .frame(height: 84)
            .background(Circle().fill(.gray))
            Text(name)
        }
            
    }
}

struct ScannedItemView_Previews: PreviewProvider {
    static var previews: some View {
        ScannedItemView(imageName: "cheerios", name: "Cheerios")
    }
}
