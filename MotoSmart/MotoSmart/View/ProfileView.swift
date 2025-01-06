//
//  ProfileView.swift
//  MotoSmart
//
//  Created by Denis Ivaschenko on 06.01.2025.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
                
                TabView {
                    HomeView()
                        .tabItem { Image(systemName: "house") }
                    
                    OrdersView()
                        .tabItem {
                            Image(systemName: "")
                        }
                    FavouritesView()
                        .tabItem { Image(systemName: "") }
                }
            }
        }
    


#Preview {
    ProfileView()
}
