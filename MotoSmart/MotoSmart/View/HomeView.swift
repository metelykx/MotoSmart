//
//  HomeView.swift
//  MotoSmart
//
//  Created by Denis Ivaschenko on 06.01.2025.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color("background", bundle: nil).ignoresSafeArea()
            Text("MotoSmart")
                
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    HomeView()
}
