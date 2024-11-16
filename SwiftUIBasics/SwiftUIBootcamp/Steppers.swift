//
//  Steppers.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 16/11/24.
//

import SwiftUI

struct Steppers: View {
    
    @State var stepperValue:Int = 10
    @State var widthIncrement:CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper(
                "Stepper: \(stepperValue)",
                value: $stepperValue
            )
            .padding()
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthIncrement, height: 100)
            
            Stepper("Stepper: \(stepperValue)"){
                // increment
                widthIncrement+=10
            } onDecrement: {
                // decrement
                widthIncrement-=10
            }
            .padding()
            
            
        }
    }
}

#Preview {
    Steppers()
}
