//
//  Buttons.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 14/11/24.
//

import SwiftUI

struct Buttons: View {
    
    @State var title:String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text("\(title)")
            
            Button("Press me"){
                self.title = "BUTTON WAS PRESSED"
            }
            .accentColor(.red) // label(text) color
            
            Button(action:{
                self.title = "BUTTON #2 was PRESSED"
            },label:{
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal,20)
                    .background(
                        Color.blue.cornerRadius(10)
                            .shadow(radius: 10)
                    )
            })
            
            
            Button(action:{
                self.title = "BUTTON #3 was PRESSED"
            },label:{
                Circle()
                    .fill(.white)
                    .frame(width: 75,height: 75)
                    .shadow(radius: 10)
                    .overlay{
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    }
            }
        )
            
            Button(action:{
                self.title = "BUTTON #4 was PRESSED"
            },label:{
                Text("Finish")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal,10)
                    .background(
                        
                        Capsule()
                            .stroke(.gray,lineWidth: 2)
                        
                        
                    )
                
                
            }
            ).disabled(false) // enable disable
            
            
            
        }
    }
}

#Preview {
    Buttons()
}
