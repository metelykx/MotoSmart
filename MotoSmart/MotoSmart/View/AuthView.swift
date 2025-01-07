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
                // Фоновый цвет
                Color("background", bundle: nil).ignoresSafeArea()
                
                VStack {
                    // Заголовок
                    Text("MotoSmart")
                        .foregroundColor(.white)
                        .font(.custom("AbrilFatface-Regular", size: 35))
                        .padding(.top, 100)
                    
                    // Поле для логина
                    createText(text: "Login", colorText: .white)
                        .padding(.trailing, 290)
                        .padding(.top, 10)
                    TextField("", text: $login)
                        .textFieldStyle(.roundedBorder)
                        .padding(.horizontal, 20)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    // Поле для пароля
                    createText(text: "Password", colorText: .white)
                        .padding(.trailing, 235)
                        .padding(.top, 30)
                    SecureField("", text: $password)
                        .textFieldStyle(.roundedBorder)
                        .padding(.horizontal, 20)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    // Поле для повторного пароля
                    createText(text: "Repeat", colorText: .white)
                        .padding(.top, 30)
                        .padding(.trailing, 255)
                    SecureField("", text: $repeatPassword)
                        .textFieldStyle(.roundedBorder)
                        .padding(.horizontal, 20)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    // Кнопка "Sign in"
                    Button(action: {
                        validateInput()
                    }) {
                        Text("Sign in")
                            .foregroundColor(.white)
                            .font(.custom("Questrial-Regular", size: 25))
                            .padding(.top, 40)
                            .padding(.bottom, 40)
                            .padding(.leading, 75)
                            .padding(.trailing, 75)
                            .background(Color("Cars", bundle: nil))
                            .cornerRadius(40)
                    }
                    .padding(.top, 100)
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

    // Функция для проверки ввода
    private func validateInput() {
        // Проверка на пробелы в логине
        if login.contains(" ") {
            alertMessage = "Login cannot contain spaces."
            showAlert = true
        }
        // Проверка, что логин не состоит только из цифр
        else if login.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil {
            alertMessage = "Login cannot consist only of numbers."
            showAlert = true
        }
        // Проверка длины логина
        else if login.count < 3 {
            alertMessage = "The login must be at least 3 characters long."
            showAlert = true
        }
        // Проверка, что пароль не пустой
        else if password.isEmpty {
            alertMessage = "Please fill in the password."
            showAlert = true
        }
        // Проверка длины пароля
        else if password.count < 8 {
            alertMessage = "The password must be at least 8 characters long."
            showAlert = true
        }
        // Проверка совпадения паролей
        else if password != repeatPassword {
            alertMessage = "Passwords do not match."
            showAlert = true
        }
        // Если все проверки пройдены, переходим на следующий экран
        else {
            navigateToProfile = true
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
