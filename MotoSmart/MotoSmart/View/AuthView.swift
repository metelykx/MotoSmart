//
//  AuthView.swift
//  MotoSmart
//
//  Created by Denis Ivaschenko on 06.01.2025.
//

import SwiftUI

struct AuthView: View {
    var body: some View {
        ZStack {
            Color("background", bundle: nil).ignoresSafeArea()
                
            VStack {
                Text("MotoSmart").foregroundColor(.white)
                    .font(.custom("AbrilFatface-Regular", size: 35))
                    .padding(.top, 100)
                
                
                let loginText = createText(text: "Login", colorText: .white)
               
                
                
                Spacer()
            }
           
        }
    }
}
private func createText(text: String, colorText: Color) -> Text {
    let text = Text(text).foregroundColor(colorText)
        .font(.custom("Questrial-Regular", size: 27))
    return text
    
}

#Preview {
    AuthView()
}
