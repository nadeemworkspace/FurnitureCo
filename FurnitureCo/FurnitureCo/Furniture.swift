//
//  Furniture.swift
//  FurnitureCo
//
//  Created by Muhammed Nadeem on 10/09/24.
//

import Foundation

struct Furniture: Identifiable{
    var id = UUID()
    var name: String
    var icon: String
}

extension Furniture{
    
    static var furnitureCategories: [Furniture]{
        return [.init(name: "Popular", icon: "popular"),
                .init(name: "Chairs", icon: "chairs"),
                .init(name: "Tables", icon: "tables"),
                .init(name: "Sofas", icon: "sofas"),
                .init(name: "Beds", icon: "beds")]
    }
    
}
