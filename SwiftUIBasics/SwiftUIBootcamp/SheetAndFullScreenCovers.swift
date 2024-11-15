//
//  SheetAndFullScreenCovers.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 15/11/24.
//

import SwiftUI

struct SheetAndFullScreenCovers: View {
    
    @State var showSheet:Bool = false
    
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            
            Button(
                action:{
                    showSheet.toggle()
                }, label:{
                    Text("Show Sheet")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding(20)
                        .background(Color.white.cornerRadius(10))
                }
            )
//            .fullScreenCover(isPresented: $showSheet){
//                SecondView()
//            }
            .sheet(isPresented: $showSheet){
                SecondView()
            }
        }
    }
}

struct SecondView:View{
    
    @Environment(\.presentationMode) var presentationMode
    
    var body:some View{
        ZStack(alignment: .topLeading){
            Color.red.ignoresSafeArea()
            
            Button(
                action:{
                    presentationMode.wrappedValue.dismiss()
                }, label:{
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding(20)
                }
            )
        }
    }
}

#Preview {
    SheetAndFullScreenCovers()
}
