//
//  ContentView.swift
//  MotoSmart
//
//  Created by Denis Ivaschenko on 04.01.2025.
//

import SwiftUI

struct ContentView: View {
    @State var text: String = ""
    var body: some View {
        
        ZStack {
            Color("background", bundle: nil).ignoresSafeArea()
            VStack {
                Text("MotoSmart").foregroundColor(.white)
                    .font(.custom("AbrilFatface-Regular", size: 35))
                    .padding(.top,100)
                
                Text("Login").font(.custom("Questrial-Regular", size: 27))
                    .foregroundColor(.white)
                    .padding(.top,10)
                    .padding(.trailing, 280)
                
                TextField("", text: $text)
                    .textFieldStyle(.roundedBorder)
                    .padding(.trailing,20)
                    .padding(.leading,20)
                
                
                Text("Password").foregroundColor(.white)
                    .font(.custom("Questrial-Regular", size: 27))
                    .padding(.top,30)
                    .padding(.trailing,235)
                Spacer()
                
                    
            }
            
        }
    }
}

#Preview {
    ContentView()
}
