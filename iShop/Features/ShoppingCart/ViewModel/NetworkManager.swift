//
//  NetworkManager.swift
//  iShop
//
//  Created by Gustavo Adolfo Rodriguez on 12/05/24.
//

import Foundation
import Alamofire

class NetworkManager: ObservableObject {
    private let baseUrl: String = "https://api.escuelajs.co/api/v1/"
    
    @Published var products: [Product] = []
    
    func getAllProducts() {
        AF.request(
            "\(baseUrl)products",
            method: .get
        ).responseDecodable(of: [Product].self) { response in
            print(response)
            switch response.result {
            case .success(let products):
                self.products = products
                
            case.failure(let error):
                print(error)
            }
        }
    }
}
