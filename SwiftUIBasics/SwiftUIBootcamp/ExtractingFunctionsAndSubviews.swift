//
//  ExtractingFunctionsAndSubviews.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 15/11/24.
//

import SwiftUI

struct ExtractingFunctionsAndSubviews: View {
    
    @State var backgroundColor:Color = .pink
    
    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea()
            
            // content
            contentLayer
            
            
        }
    }
    
    var contentLayer: some View{
        VStack{
            Text("Title")
                .font(.largeTitle)
//                .onTapGesture {
//                    buttonPressed()
//                }
            // analog of action in button to views
            
            Button(action: {
                buttonPressed()
                }, label: {
                    Text("PRESS ME")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(.black)
                        .cornerRadius(10)
                }
            )
        }
    }
    
    
    func buttonPressed(){
        backgroundColor = .yellow
    }
    
}

#Preview {
    ExtractingFunctionsAndSubviews()
}
