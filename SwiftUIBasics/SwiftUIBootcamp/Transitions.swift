//
//  Transitions.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 15/11/24.
//

import SwiftUI

struct Transitions: View {
    
    @State var showView:Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button"){
                    showView.toggle()
                }
                Spacer()
            }
            
            if showView{
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height*0.5)
                    //.transition(.slide)
                    //.transition(.move(edge: .bottom))
                    .transition(.asymmetric(
                        insertion: AnyTransition.move(edge: .bottom),
                        removal: AnyTransition.move(edge: .bottom))
                    )
                    //.transition(AnyTransition.opacity.animation(.easeInOut))
                    //.animation(.easeInOut)
            }
            
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    Transitions()
}
