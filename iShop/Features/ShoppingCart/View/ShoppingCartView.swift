//
//  ShoppingCartView.swift
//  iShop
//
//  Created by Gustavo Adolfo Rodriguez on 6/05/24.
//

import SwiftUI

struct ShoppingCartView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ItemView()
                    ItemView()
                    ItemView()
                    ItemView()
                    ItemView()
                }
                .listRowSpacing(15)
                
            }
            .navigationTitle("Shopping Cart")
        }
    }
}

#Preview {
    ShoppingCartView()
}
