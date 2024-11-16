//
//  TextFields.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 16/11/24.
//

import SwiftUI

struct TextFields: View {
    
    @State var textFieldText:String = ""
    @State var dataArray:[String] = []
    var body: some View {
        //TextField("Typing something here...",text:$textFieldText)
        
        NavigationView{
            VStack {
                TextField("Typing something here...",text:$textFieldText)
                //.textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(
                        .gray.opacity(0.3)
                    )
                    .cornerRadius(10)
                    .foregroundColor(.black)
                    .font(.headline)
                
                Button(
                    action:{
                        if textIsAppropriate() {
                            saveText()
                        }else{
                            
                        }
                    }, label:{
                        Text("Save".uppercased())
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(
                                textIsAppropriate() ? .blue : .gray
                            )
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .font(.headline)
                    }
                )
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self){ data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Textfield")
        }
    }
    
    func textIsAppropriate()->Bool{
        // check text
        if textFieldText.count>=3 {
            return true
        }
        return false
    }
    
    func saveText(){
      dataArray.append(textFieldText)
      textFieldText = ""
        
    }
}

#Preview {
    TextFields()
}
