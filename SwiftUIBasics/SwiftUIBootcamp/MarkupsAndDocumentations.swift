//
//  MarkupsAndDocumentations.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 16/11/24.
//

import SwiftUI

struct MarkupsAndDocumentations: View {
    
    // MARK: PROPERTIES
    
    @State var data : [String] = [
        "Apples",
        "Oranges",
        "Bananas",
    ]
    
    @State var isAlert:Bool = false
    
    
    // MARK: BODY
    
    // Working copy - things to do: 1) Fix title
    // 1) Fix title
    // 2) Fix alert
    
    /*
          Working copy - things to do: 1) Fix title
          1) Fix title
          2) Fix alert
     */
    
    var body: some View {
        NavigationView{
            ScrollView{
                Text("Hello")
                
                ForEach(data, id:\.self){fruit in
                
                    Text(fruit)
                        .font(.headline)
                }
            }
            .navigationTitle("Documentation")
            .navigationBarItems(
                trailing:
                    Button("Alert"){
                        isAlert.toggle()
                    }
            )
            .alert(
                isPresented: $isAlert, content: {
                    getAlert("This is the alert")
                }
            )
        }
    }
    
    // MARK: FUNCTIONS
    /// Gets an alert with a specified title
    /// - Parameter text: This is title for the alert
    /// - Returns: Returns an alert with titll
    /// - Warning: Warning part for documentation
    /// ```
    ///  getAlert("HI alert title")
    /// ```
    ///      Create a Documentation menu item from options in order to create documentation
    func getAlert(_ text:String)->Alert{
        return Alert(
            title: Text(text)
        )
    }
}

// MARK: PREVIEW
#Preview {
    MarkupsAndDocumentations()
}
