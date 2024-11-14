//
//  StateVariable.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 14/11/24.
//

import SwiftUI

struct StateVariable: View {
    
    @State var backgroundColor:Color = .green
    @State var myTitle:String = "My Title"
    @State var count:Int = 0
    
    var body: some View {
        ZStack{
            // background
            
            backgroundColor.ignoresSafeArea()
            
            // content
            VStack(spacing:20){
                Text("\(myTitle)")
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                
                HStack(spacing: 20){
                    Button("Minus"){
                        self.backgroundColor = .red
                        self.myTitle = "MINUS WAS PRESSED"
                        self.count-=1
                    }
                    
                    Button("Plus"){
                        self.backgroundColor = .purple
                        self.myTitle = "PLUS WAS PRESSED"
                        self.count+=1

                    }
                }
            }.foregroundColor(.white)
        }
    }
}

#Preview {
    StateVariable()
}
