import SwiftUI

struct AuthView: View {
    @State private var login: String = ""
    @State private var password: String = ""
    @State private var repeatPassword: String = ""
    var body: some View {
        ZStack {
            Color("background", bundle: nil).ignoresSafeArea()
                
            VStack {
                Text("MotoSmart")
                    .foregroundColor(.white)
                    .font(.custom("AbrilFatface-Regular", size: 35))
                    .padding(.top, 100)
                
                // Добавляем текст в иерархию View
                createText(text: "Login", colorText: .white)
                    .padding(.trailing, 290).padding(.top,10)
                TextField("", text: $login)
                    .textFieldStyle(.roundedBorder)
                    .padding(.trailing,20)
                    .padding(.leading,20)
                
                
                
                Spacer()
            }
        }
    }
}

// Функция для создания текста
private func createText(text: String, colorText: Color) -> Text {
    Text(text)
        .foregroundColor(colorText)
        .font(.custom("Questrial-Regular", size: 27))
}



#Preview {
    AuthView()
}
