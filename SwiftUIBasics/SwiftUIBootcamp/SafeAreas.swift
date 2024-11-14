//
//  SafeAreas.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 14/11/24.
//

import SwiftUI

struct SafeAreas: View {
    var body: some View {

        
        
        ScrollView{
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity,alignment: .leading)
                
                ForEach(0..<10){index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
        .background(
            Color.red
                .edgesIgnoringSafeArea(.all) // deprecated
                //.ignoresSafeArea(edges:.top) use this one from ios 14
        )
        
        
        
        
        
        
        
        
        
        //        ZStack {
//
//            // background
//            
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//            
//            
//            // foreground
//            
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//                
//            }
//            .frame(maxWidth: .infinity,maxHeight: .infinity)
//            .background(.red)
//        }
    }
}

#Preview {
    SafeAreas()
}
