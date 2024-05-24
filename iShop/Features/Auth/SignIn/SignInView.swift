//
//  SignInView.swift
//  iShop
//
//  Created by Gustavo Adolfo Rodriguez on 4/05/24.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        ZStack {
            Image("login")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                
            VStack {
                Image("ishop")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color("customPrimary"), lineWidth: 5)
                    )
                Text("iShop")
                    .font(.system(size: 40))
                    .bold()
                    .foregroundStyle(Color("customPrimary"))
                    
                TextFieldDetail(label: "UserName", textField: "", fieldType: FieldType.UserName)
                TextFieldDetail(label: "Password", textField: "", fieldType: FieldType.Password)
                
                HStack {
                    Button("LOGIN") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    
                    Image(systemName: "arrow.right")
                }
                .padding()
                .bold()
                .foregroundColor(.white)
                .background(Color("customPrimary"))
                .clipShape(Capsule())
            }
            .padding(30)
        }
    }
}

#Preview {
    SignInView()
}
