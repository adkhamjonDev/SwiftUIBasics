//
//  IfElseStatements.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 15/11/24.
//

import SwiftUI

struct IfElseStatements: View {
    
    @State var showCircle:Bool = false
    @State var showRectangle:Bool = false
    
    @State var isLoaing:Bool = false
    
    var body: some View {
        VStack(spacing:20){
            
            Button("Is loading"){
                isLoaing.toggle()
            }
            
            if isLoaing{
                ProgressView()
            }
            
//            Button("Circle Button: \(showCircle.description)"){
//                showCircle.toggle() // switch between true and false
//            }
//            
//            Button("Rectangle: \(showRectangle.description)"){
//                showRectangle.toggle()
//            }
//            if showCircle{
//                Circle()
//                    .frame(width: 100,height: 100)
//            } else if showRectangle{
//                Rectangle()
//                    .frame(width: 100,height: 100)
//            } else{
//                RoundedRectangle(cornerRadius: 20)
//                    .frame(width: 200,height: 200)
//            }
//            
//            Spacer()
            
        }
    }
}

#Preview {
    IfElseStatements()
}
