import SwiftUI

struct ContentView: View {
    @State var text: String = ""
    @State var pass: String = ""
    @State private var showAlert = false
    @State private var alertMessage = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("background", bundle: nil).ignoresSafeArea()
                Image("carPicture", bundle: nil)
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width)
                    .offset(x: -UIScreen.main.bounds.width / 2)
                    .padding(.top, 240)
                
                VStack {
                    Text("MotoSmart")
                        .foregroundColor(.white)
                        .font(.custom("AbrilFatface-Regular", size: 35))
                        .padding(.top, 100)
                    
                    Text("Login")
                        .font(.custom("Questrial-Regular", size: 27))
                        .foregroundColor(.white)
                        .padding(.top, 10)
                        .padding(.trailing, 290)
                    
                    TextField("", text: $text)
                        .textFieldStyle(.roundedBorder)
                        .padding(.trailing, 20)
                        .padding(.leading, 20)
                    
                    Text("Password")
                        .foregroundColor(.white)
                        .font(.custom("Questrial-Regular", size: 27))
                        .padding(.top, 30)
                        .padding(.trailing, 235)
                    
                    TextField("", text: $pass)
                        .textFieldStyle(.roundedBorder)
                        .padding(.trailing, 20)
                        .padding(.leading, 20)
                    
                    NavigationLink {
                        AuthView()
                    } label: {
                        Text("Sign up")
                            .foregroundColor(.white)
                            .font(.custom("Questrial-Regular", size: 20))
                    }
                    .padding(.top, 10)
                    
                    Button(action: {
                        validatePassword()
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
                    
                    Spacer()
                }
            }
        }
    }
    
    private func validatePassword() {
        if pass.count < 8 && pass.count > 0 {
            alertMessage = "Password must be at least 8 characters long."
            showAlert = true
        } else if pass.count == 0 {
            alertMessage = "fill in the Password"
            showAlert = true
        }
        
        
        
        
        
        else {
            // Переход на следующий экран или выполнение других действий
            NavigationLink(destination: ProfileView()) {
                EmptyView()
            }
        }
    }
}

#Preview {
    ContentView()
}
