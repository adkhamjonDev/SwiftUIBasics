//
//  FocusStates.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 18/11/24.
//

import SwiftUI

struct FocusStates: View {
    
    enum OnBoardingFields : Hashable{
        case username
        case password
    }
    
    @State var username:String = ""
    @State var password:String = ""
//    @FocusState var usernameFocusedState:Bool
//    @FocusState var passwordFocusedState:Bool
    @FocusState private var fieldInFocus:OnBoardingFields?
    var body: some View {
        VStack(spacing:16) {
            TextField("Add your name here...",text: $username)
                .focused($fieldInFocus,equals: .username)
                //.focused($usernameFocusedState)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            TextField("Add your password here...",text: $password)
                //.focused($passwordFocusedState)
                .focused($fieldInFocus,equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("SIGN UP 🫡"){
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid && passwordIsValid{
                    print("Sign up")
                }else if usernameIsValid {
//                    usernameFocusedState = false
//                    passwordFocusedState = true
                    fieldInFocus = .password
                } else {
//                    usernameFocusedState = true
//                    passwordFocusedState = false
                    fieldInFocus = .username
                }
            }
            
//            Button("TOGGLE FOCUS STATE"){
//                usernameFocusedState.toggle()
//            }
        }
        .padding()
//        .onAppear{
//            DispatchQueue.main.asyncAfter(deadline: .now()+3){
//                self.focusedState = true
//            }
//        }
        
    }
}

#Preview {
    FocusStates()
}
