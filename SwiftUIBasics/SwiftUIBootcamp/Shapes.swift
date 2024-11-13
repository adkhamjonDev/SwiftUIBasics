//
//  Shapes.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 13/11/24.
//
import SwiftUI


struct Shapes:View{
    var body:some View{
        //Circle()
        //Ellipse()
        //Capsule(style: .circular)
        //Rectangle()
        RoundedRectangle(cornerRadius: 50)
            .fill(Color.blue)
            //.foregroundColor(Color.red)
            //.stroke()
            //.stroke(Color.red)
            //.stroke(Color.blue,lineWidth: 30)
//            .stroke(Color.orange,style: StrokeStyle(
//                lineWidth: 20,lineCap: .round,dash: [30]
//            ))
//            .trim(from: 0.2,to: 1.0)
//            .stroke(Color.purple,lineWidth: 50)
            .frame(width:300,height:200)
            .shadow(radius: 10)
        
       
        
        
        
    }
}

#Preview {
    Shapes()
}
