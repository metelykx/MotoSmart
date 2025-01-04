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
                    .padding(.trailing, 290)
                
                TextField("", text: $text)
                    .textFieldStyle(.roundedBorder)
                    .padding(.trailing,20)
                    .padding(.leading,20)
                
                
                Text("Password").foregroundColor(.white)
                    .font(.custom("Questrial-Regular", size: 27))
                    .padding(.top,30)
                    .padding(.trailing,235)
                
                
                TextField("", text: $text)
                    .textFieldStyle(.roundedBorder)
                    .padding(.trailing,20)
                    .padding(.leading,20)
                
                
                Button {
                    print("salam")
                } label: {
                    Text("Sign in").foregroundColor(.white)
                        .font(.custom("Questrial-Regular", size: 25))
                        .padding(.leading,75)
                        .padding(.trailing,75)
                        .padding(.top,40)
                        .padding(.bottom,40)
                        .background(Color("Cars", bundle: nil))
                        
                }.cornerRadius(40)
                .padding(.top, 230)
                    
                    

                Spacer()
                
                    
            }
            
        }
    }
}

#Preview {
    ContentView()
}
