//
//  ExtractingSubviews.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 15/11/24.
//

import SwiftUI

struct ExtractingSubviews: View {
    var body: some View {
        ZStack{
            Color.secondary.ignoresSafeArea()
            
            contentLayer
            
        }
    }
    
    var contentLayer:some View{
        HStack{
            MyView(title: "Apples", count: 10, color: Color.red)
            MyView(title: "Oranges", count: 20, color: Color.orange)
            MyView(title: "Bananas", count: 30, color: Color.yellow)
        }
    }
    
}

#Preview {
    ExtractingSubviews()
}

struct MyView: View {
    
    let title:String
    let count:Int
    let color:Color
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .font(.headline)
        .foregroundColor(.white)
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
