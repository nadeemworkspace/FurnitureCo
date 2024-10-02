//
//  Product.swift
//  FurnitureCo
//
//  Created by Muhammed Nadeem on 10/09/24.
//

import Foundation

struct Product: Identifiable{
    let id = UUID()
    var name: String
    var amount: String
    var image: String
}

extension Product{
    
    static var products: [Self]{
        return [.init(name: "Royal Palm Sofa", amount: "$50.18", image: "product1"),
                .init(name: "Leatherette Sofa", amount: "$30.99", image: "product2"),
                .init(name: "Modern Sofa", amount: "$45.99", image: "product3"),
                .init(name: "Leatherette Sofa", amount: "$20.99", image: "product4")
        ]
    }
    
}
