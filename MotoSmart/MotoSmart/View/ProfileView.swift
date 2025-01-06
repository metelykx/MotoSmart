//
//  ProfileView.swift
//  MotoSmart
//
//  Created by Denis Ivaschenko on 06.01.2025.
//

import SwiftUI

struct ProfileView: View {
    init() {
            // Создаем объект appearance для настройки TabBar
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground() // Отключаем прозрачность
            appearance.backgroundColor = UIColor(named: "back") // Устанавливаем цвет фона TabBar

            // Применяем appearance для TabBar
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
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
                }.accentColor(Color("Cars", bundle: nil)) // Цвет выбранной вкладки
            }
        }
    


#Preview {
    ProfileView()
}
