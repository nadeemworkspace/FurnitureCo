//
//  DetailsView.swift
//  FurnitureCo
//
//  Created by Muhammed Nadeem on 10/09/24.
//

import SwiftUI

struct DetailsView: View {
    
    let product: Product
    
    var body: some View {
        Text(product.name)
    }
    
}

#Preview {
    DetailsView(product: Product.products[2])
}
