//
//  OnboardingView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Nick Sarno on 3/1/21.
//

import SwiftUI

struct OnboardingView: View {
    
    // Onboarding states:
    /*
     0 - Welcome screen
     1 - Add name
     2 - Add age
     3 - Add gender
     */
    @State var onboardingState: Int = 0
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading))
    
    // onboarding inputs
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    // for the alert
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false

    var body: some View {
            ZStack {
                // content
                ZStack {
                    switch onboardingState {
                    case 0:
                        welcomeSection
                            .transition(transition)
                    case 1:
                        addNameSection
                            .transition(transition)
                    case 2:
                        addAgeSection
                            .transition(transition)
                    case 3:
                        addGenderSection
                            .transition(transition)
                    default:
                        RoundedRectangle(cornerRadius: 25.0)
                            .foregroundColor(.green)
                    }
                }
                
                // buttons
                VStack {
                    Spacer()
                    bottomButton
                }
                .padding(30)
            }
            .alert(isPresented: $showAlert, content: {
                return Alert(title: Text(alertTitle))
            })
        }
    
}

#Preview{
    OnboardingView()
        .background(Color.purple)
}

