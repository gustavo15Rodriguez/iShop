//
//  TextFieldDetail.swift
//  iShop
//
//  Created by Gustavo Adolfo Rodriguez on 6/05/24.
//

import SwiftUI

struct TextFieldDetail: View {
    @State var label: String = ""
    @State var textField: String = ""
    @State var fieldType: FieldType?
    
    var body: some View {
        HStack {
            if fieldType == FieldType.UserName {
                TextField(label, text: $textField)
                Image(systemName: "person")
                
            } else {
                SecureField(label, text: $textField)
                Image(systemName: "eye")
            }
        }
        .padding()
        .bold()
        .foregroundColor(Color("customPrimary"))
        .background(.black.opacity(0.05))
        .clipShape(Capsule())
    }
}


#Preview {
    TextFieldDetail()
}
