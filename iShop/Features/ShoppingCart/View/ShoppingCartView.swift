//
//  ShoppingCartView.swift
//  iShop
//
//  Created by Gustavo Adolfo Rodriguez on 6/05/24.
//

import SwiftUI

struct ShoppingCartView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            ZStack {
                List(networkManager.products) { product in
                    NavigationLink(destination: ItemDetailView(
                        title: product.title,
                        category: product.category.name,
                        image: product.images[0],
                        price: product.price,
                        description: product.description
                    )) {
                        ItemView(
                            title: product.title,
                            category: product.category.name,
                            image: product.images[0],
                            price: product.price
                        )
                    }
                }
                .onAppear { networkManager.getAllProducts() }
                .listRowSpacing(15)
                
            }
            .navigationTitle("Shopping Cart")
        }
    }
}

#Preview {
    ShoppingCartView()
}
