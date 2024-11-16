//
//  TextEditors.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 16/11/24.
//

import SwiftUI

struct TextEditors: View {
    @State var textEditorText:String = "This is the starting text!"
    @State var savedText:String = ""
    var body: some View {
        
        NavigationView{
            
            VStack {
                TextEditor(
                    text: $textEditorText
                )
                .frame(height: 250)
                .foregroundColor(.black)
                .colorMultiply(.gray.opacity(0.3))
                .cornerRadius(10)
                
                Button(
                    action:{
                        savedText = textEditorText
                    }, label:{
                        Text("Save".uppercased())
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(.blue)
                            .cornerRadius(10)
                    }
                )
                
                Text(savedText)
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextEditor!")
        }
        
        
    }
    
}

#Preview {
    TextEditors()
}
