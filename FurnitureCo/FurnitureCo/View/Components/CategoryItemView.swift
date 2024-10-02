//
//  CategoryView.swift
//  FurnitureCo
//
//  Created by Muhammed Nadeem on 10/09/24.
//

import SwiftUI

struct CategoryItemView: View {
    
    let category: Furniture
    
    var body: some View {
        VStack{
            Image(category.icon)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .frame(width: 44, height: 44)
                .background(category.name == "Popular" ? .customGrey : .offWhite)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                
            Text(category.name)
                .font(.custom(category.name == "Popular" ? Fonts.clashDisplayMedium.rawValue : Fonts.clashDisplayRegular.rawValue, size: 12))
                .foregroundStyle(category.name == "Popular" ? .black : .lightGrey)
        }
    }
    
}

struct CategoryItemView_Provider: PreviewProvider{
    static var previews: some View{
        CategoryItemView(category: Furniture.furnitureCategories[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
