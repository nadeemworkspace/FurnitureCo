//
//  HomeView.swift
//  FurnitureCo
//
//  Created by Muhammed Nadeem on 10/09/24.
//

import SwiftUI

struct HomeView: View {
    
    private let column = [
        GridItem(.flexible(), spacing: -10),
        GridItem(.flexible(), spacing: -10)
    ]
    
    var body: some View {
        
        VStack{
            
            headerView
            
            ScrollView(.vertical){
                
                SearchBarView()
                    .padding(.horizontal, 16)
                
                furnitureCategoryView
                
                products
                
            }
            .scrollIndicators(.hidden)
            
            
        }
        .safeAreaInset(edge: .top) { Color.clear.frame(height: 0) }
        .ignoresSafeArea(edges: .bottom)
    }
}



#Preview {
    HomeView()
}

extension HomeView {
    
    private var headerView: some View{
        return HStack{
            Text("FurnitureCo.")
                .font(.custom(Fonts.clashDisplaySemibold.rawValue, size: 20))
                .foregroundStyle(.customGrey)
            Spacer()
            Button{
                print("Cart Clicked")
            }label: {
                Image(.cart)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 29, height: 29)
            }
        }
        .padding(16)
    }
    
    private var furnitureCategoryView: some View{
        return ScrollView(.horizontal){
            HStack{
                ForEach(Furniture.furnitureCategories) { item in
                    CategoryItemView(category: item)
                        .frame(width: 70, height: 90)
                }
            }
            .frame(maxWidth: .infinity)
        }
        .padding(.horizontal, 16)
        .scrollIndicators(.hidden)
    }
    
    private var products: some View{
        return LazyVGrid(columns: column, spacing: 20){
            ForEach(Product.products){ product in
                ProductView(product: product)
                    .padding(.horizontal, 16)
            }
        }
        .padding(.top, 10)
    }
    
}
