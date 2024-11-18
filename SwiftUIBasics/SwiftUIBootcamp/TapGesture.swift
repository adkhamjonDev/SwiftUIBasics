//
//  TapGesture.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 18/11/24.
//

import SwiftUI

struct TapGesture: View {
    
    @State var isSelectedColor:Bool = false
    
    var body: some View {
        VStack(spacing:40){
            
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundColor(isSelectedColor ? .green : .red)
            
            Button(
                action:{
                    isSelectedColor.toggle()
                }, label:{
                    Text("Button")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadius(25)
                }
            )
            
            
            Text("TAP Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(25)
//                .onTapGesture {
//                    isSelectedColor.toggle()
//                }
                .onTapGesture(count: 2, perform: {
                    isSelectedColor.toggle()
                })
            
            Spacer()
        
            
        }
        .padding(40)
    }
}

#Preview {
    TapGesture()
}
