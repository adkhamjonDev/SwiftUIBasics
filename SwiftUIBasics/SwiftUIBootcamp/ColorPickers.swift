//
//  ColorPicker.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 16/11/24.
//

import SwiftUI

struct ColorPicker: View {
    
    @State var backColor:Color = .green
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            
            
            ColorPicker(
                "Select a color",
                selection: $backColor
            )
        }
    }
}

#Preview {
    ColorPicker()
}
