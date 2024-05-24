//
//  ItemDetailView.swift
//  iShop
//
//  Created by Gustavo Adolfo Rodriguez on 7/05/24.
//

import SwiftUI

struct ItemDetailView: View {
    var title: String
    var category: String
    var image: String
    var price: Int
    var description: String
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    AsyncImage(url: URL(string: image)) { value in
                        value.image?.resizable()
                    }
                    .frame(width: 250, height: 250)
                    .aspectRatio(contentMode: .fit)
                    
                    VStack  {
                        Text(title)
                            .bold()
                        
                        Divider()
                        
                        Text("Descripcion")
                            .bold()
                            .foregroundColor(Color("customPrimary"))
                        
                        Text(description)
                        
                        Divider()
                        
                        HStack {
                            Image(systemName: "cart")
                            
                            Button("Agregar al carrito") {
                                	
                            }
                            
                            Text("$\(price)")
                        }
                        .padding()
                        .foregroundStyle(.white)
                        .background(Color("customPrimary"))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    .padding()
                }
            }
            .navigationTitle(Text(title))
        }
    }
}

#Preview {
    ItemDetailView(title: "", category: "", image: "", price: 0, description: "")
}
