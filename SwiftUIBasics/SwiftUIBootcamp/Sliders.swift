//
//  Sliders.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 16/11/24.
//

import SwiftUI

struct Sliders: View {
    
    @State var sliderValue:Double = 3
    @State var color:Color = .red
    
    var body: some View {
        VStack {
            Text("Rating:")
            Text(
                String(format: "%.1f", sliderValue)
                //"\(sliderValue)"
            )
            .foregroundColor(color)
            //Slider(value: $sliderValue)
//            Slider(
//                value: $sliderValue,
//                in: 0...5
//            )
            
//            Slider(
//                value: $sliderValue,
//                in: 0...5,
//                step: 1.0
//            )
            Slider(
                value: $sliderValue,
                in: 0...5,
                step: 1.0,
                onEditingChanged: { (_) in
                    color = .green
                },
                minimumValueLabel:
                    Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.orange),
                maximumValueLabel: Text("5"),
                label:{
                    
                }
            )
            .accentColor(.red)
            .padding()
        }
        
    }
}

#Preview {
    Sliders()
}
