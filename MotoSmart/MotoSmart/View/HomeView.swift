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
            VStack {
                Text("MotoSmart").foregroundColor(.white)
                    .font(.custom("AbrilFatface-Regular", size: 35))
                    .padding(.top,10)
                    .padding(.trailing,200)
                
                
                Spacer()
            }.navigationBarBackButtonHidden(true) 
                .navigationBarHidden(true)
        }
    }
}

#Preview {
    HomeView()
}
