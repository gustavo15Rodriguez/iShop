//
//  ItemDetailView.swift
//  iShop
//
//  Created by Gustavo Adolfo Rodriguez on 7/05/24.
//

import SwiftUI

struct ItemView: View {
    var title: String
    var category: String
    var image: String
    var price: Int
    
    var body: some View {
        VStack {
            HStack {
                AsyncImage(url: URL(string: image)) { value in
                    value.image?.resizable()
                }
                .frame(width: 100, height: 80)
                .aspectRatio(contentMode: .fit)
                    
                VStack(alignment: .leading, spacing: 0) {
                    Text(title)
                        .bold()
                        .foregroundColor(Color("customPrimary"))
                        .font(.system(size: 20))
                    Text(category)
                    
                    HStack(alignment: .center, spacing: 50) {
                        Text("$\(price)")
                            .bold()
                        //MARK: -Buttons
                        HStack {
                            Button("+") {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }
                            .bold()
                            .foregroundColor(Color("customPrimary"))
                            .padding(3)
                            .background(.white)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .opacity(0)
                            )
                            
                            Text("1")
                            
                            Button("-") {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }
                            .bold()
                            .foregroundColor(Color("customPrimary"))
                            .padding(3)
                            .background(.white)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .opacity(0)
                            )
                        }
                        .padding(.horizontal, 10)
                        .background(Color(.black.opacity(0.08)))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .opacity(0)
                        )
                       
                    }
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .opacity(0)
            )
        }
    }
}

#Preview {
    ItemView(title: "", category: "" , image: "", price: 0)
}
