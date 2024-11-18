//
//  ToolBars.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 18/11/24.
//

import SwiftUI

struct ToolBars: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.white.ignoresSafeArea()
                ScrollView(showsIndicators: false){
                    Text("Hey 😉")
                        .foregroundColor(.white)
                    
                    ForEach(0..<50){_ in
                        Rectangle()
                            .fill(.blue)
                            .frame(width: 200,height: 200)
                    }
                    
                }
            
                
                
            }
            .navigationTitle("Toolbar")
            //            .navigationBarItems(
            //                leading: Image(systemName: "heart.fill"),
            //                trailing: Image(systemName: "gear")
            //            )
            //
            .toolbar{
                ToolbarItem(
                    placement: .navigationBarLeading
                ){
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(
                    placement: .navigationBarTrailing
                ){
                    HStack{
                        Image(systemName: "house.fill")
                        Image(systemName: "gear")
                    }
                }
                ToolbarItem(
                    placement: .navigationBarTrailing
                ){
                    Image(systemName: "house.fill")
                    Image(systemName: "gear")
                }
            }
            //.navigationBarHidden(true)
            //.toolbarVisibility(.hidden,for: .navigationBar)
            //.toolbarBackground(.hidden, for: .navigationBar)
            //.toolbarColorScheme(.light, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu{
                Button("Screen 1"){
                    
                }
                Button("Screen 1"){
                    
                }
            }
        }
    }
}

#Preview {
    ToolBars()
}
