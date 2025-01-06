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
                        .tabItem { Image(systemName: "house.fill") }
                    
                    OrdersView()
                        .tabItem {
                            Image(systemName: "car.fill")
                        }
                    MessageWithAssistantView()
                        .tabItem { Image(systemName: "message.fill") }
                    FavouritesView()
                        .tabItem { Image(systemName: "heart.fill") }
                }
            }
        }
    


#Preview {
    ProfileView()
}
