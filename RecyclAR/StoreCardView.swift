//
//  StoreCardView.swift
//  RecyclAR
//
//  Created by Philipp Hemkemeyer on 4/6/23.
//

import SwiftUI

struct StoreCardView: View {
    
    let imageName: String
    let name: String
    let location: String
    
    
    var body: some View {
        ZStack {
            // Background of box
            RoundedRectangle(cornerRadius: 12)
                .strokeBorder(Color.gray, lineWidth: 1)
                .background(Material.regular)
            
            // Foreground of box
            VStack(spacing: 0.0) {
                
                // Store image
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                    .cornerRadius(8)
                    .padding(12)
                
                // Describing text
                Text(name)
                    .tracking(0.2)
                    .font(.caption)
                    .padding(.horizontal, 12)
                
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                    Text(location)
                        
                        .foregroundColor(.gray)
                }
                .font(.caption2)
                .padding(.bottom, 12)
            }
            
            
            
        }
        .frame(width: 280, height: 200)
    }
}

struct StoreCardView_Previews: PreviewProvider {
    static var previews: some View {
        StoreCardView(imageName: "publix-store", name: "Publix Super Market at The Plaza Midtown", location: "950 W Peachtree St NW, Atlanta, GA 30309")
    }
}
