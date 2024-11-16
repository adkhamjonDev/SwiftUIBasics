//
//  ColorPicker.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 16/11/24.
//

import SwiftUI

struct ColorPickers: View {
    
    @State var backColor:Color = .gray.opacity(0.3)
    var body: some View {
        ZStack {
            backColor.ignoresSafeArea()
            
            
            
            ColorPicker(
                "Select a color",
                selection: $backColor,
                supportsOpacity: true
            )
            .padding()
            .background(.black)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
        }
    }
}

#Preview {
    ColorPickers()
}
