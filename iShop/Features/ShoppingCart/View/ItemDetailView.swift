//
//  ItemDetailView.swift
//  iShop
//
//  Created by Gustavo Adolfo Rodriguez on 7/05/24.
//

import SwiftUI

struct ItemDetailView: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Image("ishop")
                        .resizable()
                        .frame(width: 250, height: 250)
                    
                    VStack  {
                        Text("Mika Chair")
                            .bold()
                        
                        Divider()
                        
                        Text("Descripcion")
                            .bold()
                            .foregroundColor(Color("customPrimary"))
                        
                        Text("Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500")
                        
                        Divider()
                        
                        HStack {
                            Image(systemName: "cart")
                            
                            Button("Agregar al carrito") {
                                	
                            }
                            
                            Text("$39.99")
                        }
                        .padding()
                        .foregroundStyle(.white)
                        .background(Color("customPrimary"))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    .padding()
                }
            }
            .navigationTitle("Mika Chair")
        }
    }
}

#Preview {
    ItemDetailView()
}
