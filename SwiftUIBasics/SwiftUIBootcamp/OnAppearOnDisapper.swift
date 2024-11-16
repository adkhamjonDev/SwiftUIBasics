//
//  OnAppearOnDisapper.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 16/11/24.
//

import SwiftUI

struct OnAppearOnDisapper: View {
    
    @State var myText:String = ""
    @State var count:Int = 0
    
    var body: some View {
        NavigationView{
            
            ScrollView{
                
                Text(myText)
                
                LazyVStack{
                    ForEach(0..<50){ _ in
                    
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .shadow(radius: 10)
                            .onAppear(perform: {
                                count+=1
                            })
                        
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now()+5){
                    myText = "This is the new text!"
                }
               
            })
            .onDisappear( perform: {
                myText = "Ending text."
            })
            .navigationTitle("On Appear : \(count)")
            
        }
    }
}

#Preview {
    OnAppearOnDisapper()
}
