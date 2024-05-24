//
//  Product.swift
//  iShop
//
//  Created by Gustavo Adolfo Rodriguez on 12/05/24.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let title: String
    let price: Int
    let description: String
    let category: Category
    let images: [String]
}
