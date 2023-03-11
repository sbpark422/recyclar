//
//  TabBarView.swift
//  RecyclAR
//
//  Created by Philipp Hemkemeyer on 3/10/23.
//

import SwiftUI

struct TabBarView: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            InfoView()
                .tabItem {
                    selectedTab == 0 ? Image(systemName: "info.circle") : Image(systemName: "info")
                    Text("Info")
                }.tag(0)
            ScannerView()
                .tabItem {
                    selectedTab == 1 ? Image(systemName: "viewfinder.circle") : Image(systemName: "viewfinder")
                    Text("Scanner")
                }.tag(1)
                .edgesIgnoringSafeArea(.all)
                .toolbarBackground(.hidden, for: .tabBar)
            ScoresView()
                .tabItem {
                    selectedTab == 2 ? Image(systemName: "trophy.circle") : Image(systemName: "trophy")
                    Text("Scores")
                }.tag(2)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
