//
//  SearchBarView.swift
//  FurnitureCo
//
//  Created by Muhammed Nadeem on 10/09/24.
//

import SwiftUI

struct SearchBarView: View {
    
    var body: some View {
        
        HStack{
            Image(.search)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .padding(.leading, 16)
            
            Text("Search for Furniture")
                .font(.custom(Fonts.clashDisplayRegular.rawValue, size: 12))
                .foregroundStyle(.lightGrey)
                .padding(.leading)
            
            Spacer()
            
            Button{
                
            }label: {
                Image(.filter)
            }
            .frame(width: 56, height: 56)
            .background(Color.customGrey)
            .clipShape(RoundedRectangle(cornerRadius: 12))
        }
        .frame(height: 56)
        .frame(maxWidth: .infinity)
        .background(.offWhite)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        
    }
}

struct SearchBarView_Preview: PreviewProvider {
    static var previews: some View {
        SearchBarView()
            .previewLayout(.sizeThatFits)
    }
}
