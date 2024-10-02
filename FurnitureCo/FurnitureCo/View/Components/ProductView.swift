//
//  ProductView.swift
//  FurnitureCo
//
//  Created by Muhammed Nadeem on 10/09/24.
//

import SwiftUI

struct ProductView: View {
    
    let product: Product
    
    var body: some View {
        VStack(spacing: 16){
            
            Image(product.image)
                .resizable()
                .scaledToFit()
                .frame(width: 133, height: 144)
            
            
            HStack{
                VStack(alignment: .leading, spacing: 5){
                    Text(product.name)
                        .font(.custom(Fonts.clashDisplayMedium.rawValue, size: 12))
                    
                    Text(product.amount)
                        .font(.custom(Fonts.clashDisplaySemibold.rawValue, size: 14))
                        .foregroundStyle(.customGreen)
                }
                Spacer()
            }
    
        }
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(color: Color.gray.opacity(0.20), radius: 10, x: 0, y: 5)
    }
}


struct ProductView_Preview: PreviewProvider{
    static var previews: some View{
        ProductView(product: .products[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
