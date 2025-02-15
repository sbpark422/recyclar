//
//  TopBarView.swift
//  RecyclAR
//
//  Created by Philipp Hemkemeyer on 4/6/23.
//

import SwiftUI

struct TopBarView: View {
    var body: some View {
        HStack(alignment: .top) {
            
            // Profile and level display
            NavigationLink {
                Text("User profile is here.")
            } label: {
                VStack {
                    Image(systemName: "person")
                        .foregroundColor(.white)
                        .bold()
                        .frame(width: 52,height: 52)
                        .background(Color.gray)
                        .cornerRadius(52)
                    HStack {
                        Image(systemName: "rosette")
                        Text("Level 1")
                    }
                    .foregroundColor(.black)
                    .font(.footnote)
                }
            }
            
            Spacer()
            
            // Scanner code and app settings
            HStack {
                
                // Code to scan
                NavigationLink {
                    Text("QR Code in **big**.")
                } label: {
                    Image(systemName: "qrcode")
                        .frame(width: 52,height: 52)
                }
                
                // App settings
                NavigationLink {
                    Text("You found the settings.")
                        .navigationTitle("Settings")
                } label: {
                    Image(systemName: "gear")
                        .frame(width: 52,height: 52)
                }
                
            }.foregroundColor(.white)
                .bold()
                .background(Color.gray)
                .cornerRadius(52)
            
        }
        
    }
}

struct TopBarView_Previews: PreviewProvider {
    static var previews: some View {
        TopBarView()
    }
}
