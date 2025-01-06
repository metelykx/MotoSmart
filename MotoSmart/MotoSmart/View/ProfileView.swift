//
//  ProfileView.swift
//  MotoSmart
//
//  Created by Denis Ivaschenko on 06.01.2025.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            Color("background", bundle: nil).ignoresSafeArea()
            VStack {
                Text("MotoSmart").foregroundColor(.white)
                    .font(.custom("AbrilFatface-Regular", size: 35))
            }.navigationBarBackButtonHidden(true)
                .navigationBarHidden(true)
        }
    }
}

#Preview {
    ProfileView()
}
