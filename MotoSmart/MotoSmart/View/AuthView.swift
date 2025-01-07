import SwiftUI

struct AuthView: View {
    @State private var login: String = ""
    @State private var password: String = ""
    @State private var repeatPassword: String = ""
    @State private var showAlert: Bool = false
    @State private var alertMessage: String = ""
    @State private var navigateToProfile: Bool = false
    var body: some View {
        NavigationView {
            ZStack {
                //-MARK: background color
                Color("background", bundle: nil).ignoresSafeArea()
                
                VStack {
                    //-MARK: textFields and SecureFields
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
                    
                    
                    
                    Button(action: {
                        validateInput()
                    }) {
                        Text("Sign in")
                            .foregroundColor(.white)
                            .font(.custom("Questrial-Regular", size: 25))
                            .padding(.leading, 75)
                            .padding(.trailing, 75)
                            .padding(.top, 40)
                            .padding(.bottom, 40)
                            .background(Color("Cars", bundle: nil))
                            .cornerRadius(40)
                    }
                    .padding(.top, 235)
                    .alert(isPresented: $showAlert) {
                        Alert(
                            title: Text("Error"),
                            message: Text(alertMessage),
                            dismissButton: .default(Text("OK"))
                        )
                    }
                    
                    // Скрытый NavigationLink для перехода
                    NavigationLink(destination: ProfileView(), isActive: $navigateToProfile) {
                        EmptyView()
                    }
                    Spacer()
                }
            }
        }
    }
}

//-MARK: function createText
private func createText(text: String, colorText: Color) -> Text {
    Text(text)
        .foregroundColor(colorText)
        .font(.custom("Questrial-Regular", size: 27))
}


private func validateInput() {
    
}



#Preview {
    AuthView()
}
