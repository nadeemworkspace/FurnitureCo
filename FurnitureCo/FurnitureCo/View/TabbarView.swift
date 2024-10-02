//
//  TabbarView.swift
//  FurnitureCo
//
//  Created by Muhammed Nadeem on 10/09/24.
//

import SwiftUI

struct TabbarView: View {
    
    var body: some View {
        
        TabView{
            
            HomeView()
                .tabItem {
                    Image(.home)
                }
            
            Text("Bookmarks")
                .tabItem {
                    Image(.bookmark)
                }
            
            Text("Notification")
                .tabItem {
                    Image(.notification)
                }
            
            Text("Profile")
                .tabItem {
                    Image(.profile)
                }
            
        }
    }
    
}

#Preview {
    TabbarView()
}
