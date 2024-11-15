//
//  BindingProperty.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 15/11/24.
//

import SwiftUI

struct BindingProperty: View {
    @State var backgroundColor:Color = .green
    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea()
            
            ButtonView(
                color: $backgroundColor
            )
            
//            ButtonView{
//                backgroundColor = .orange
//            }
        }
    }
}

#Preview {
    BindingProperty()
}

struct ButtonView: View {
    
    @Binding var color:Color
    
    //var action: () -> Void
    
    var body: some View {
        Button(
            action:{
                color = .orange
                //action()
            },label: {
                Text("Button")
                    .foregroundColor(.white)
                    .padding()
                    .background(.blue)
                    .cornerRadius(10)
            }
        )
    }
}
