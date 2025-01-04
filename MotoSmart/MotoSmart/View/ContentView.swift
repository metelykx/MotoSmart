//
//  ContentView.swift
//  MotoSmart
//
//  Created by Denis Ivaschenko on 04.01.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color("background", bundle: nil).ignoresSafeArea()
            VStack {
                Text("MotoSmart").foregroundColor(.white)
                    .font(.custom("AbrilFatface-Regular", size: 35))
                
                Spacer()
            }
            
        }
    }
}

#Preview {
    ContentView()
}
