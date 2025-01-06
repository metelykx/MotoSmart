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
                
            
                createText(text: "Login", colorText: .white)
                    .padding(.trailing, 290).padding(.top,10)
                TextField("", text: $login)
                    .textFieldStyle(.roundedBorder)
                    .padding(.trailing,20)
                    .padding(.leading,20)
                
                createText(text: "Password", colorText: .white)
                    .padding(.trailing,235)
                    .padding(.top,30)
                
                SecureField("", text: $password).textFieldStyle(.roundedBorder)
                    .padding(.trailing,20)
                    .padding(.leading,20)
                
                
                createText(text: "Repeat ", colorText: .white)
                    .padding(.top, 30)
                    .padding(.trailing,255)
                
                SecureField("", text: $repeatPassword).textFieldStyle(.roundedBorder)
                    .padding(.trailing,20)
                    .padding(.leading,20)
                
                
                
                Button {
                    print("salam")
                } label: {
                    Text("Sign up").foregroundColor(.white)
                        .font(.custom("Questrial-Regular", size: 25))
                        .padding(.leading,75)
                        .padding(.trailing,75)
                        .padding(.top,40)
                        .padding(.bottom,40)
                        .background(Color("Cars", bundle: nil))
                    
                }.cornerRadius(40)
                    .padding(.top, 100)

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
