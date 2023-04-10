//
//  ScannedItemListView.swift
//  RecyclAR
//
//  Created by Philipp Hemkemeyer on 4/10/23.
//

import SwiftUI

struct ScannedItemListView: View {
    
    @State private var products: [Product] = []
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(products) { product in
                    ScannedItemView(product: product)
                }
            }
            .padding(.leading, 28)
        }
        .frame(height: 126)
        .task {
            products = Product.all
        }
    }
}

struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        ScannedItemListView()
    }
}
