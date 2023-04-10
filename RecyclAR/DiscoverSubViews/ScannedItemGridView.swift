//
//  ScannedItemGridView.swift
//  RecyclAR
//
//  Created by Philipp Hemkemeyer on 4/10/23.
//

import SwiftUI

struct ScannedItemGridView: View {
    
    @State private var products: [Product] = []
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: [
                GridItem(.flexible()),
                GridItem(.flexible())
            ], spacing: 20) {
                    ForEach(products) { product in
                        ScannedItemView(product: product)
                    }
                }
        }
        .navigationTitle("All scanned products")
        .task {
            products = Product.all
        }
    }
}

struct ScannedItemGridView_Previews: PreviewProvider {
    static var previews: some View {
        ScannedItemGridView()
    }
}
