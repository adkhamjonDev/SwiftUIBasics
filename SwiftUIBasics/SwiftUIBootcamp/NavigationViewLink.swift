//
//  NavigationViewLink.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 15/11/24.
//

import SwiftUI

struct NavigationViewLink: View {
    var body: some View {
        
        NavigationView{
            
            ScrollView{
                
                NavigationLink(
                    "Hello world!",
                    destination: {
                            MyOtherScreen()
                        }
                )
                
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("Navigation Title")
            //.navigationBarTitleDisplayMode(.automatic)
            //.navigationBarHidden(true)
            .navigationBarItems(
                leading:
                    
                    
                    HStack{
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }
                    
                
                ,
                trailing:
                    NavigationLink(
                        destination: MyOtherScreen(),
                        label: {
                            Image(systemName: "gear")
                        }
                    )
                    .accentColor(.red)
            )
        }
        
    }
}

struct MyOtherScreen:View{
    
    @Environment(\.presentationMode) var presentationMode
    
    var body:some View{
        ZStack{
            Color.green.ignoresSafeArea()
                .navigationTitle("Green Screen")
                //.navigationBarHidden(true)
            
            VStack{
                
                Button("Back Button"){
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("Click Here",destination: {
                    Text("3rd Screen")
                })
            }
            
           
        }
    }
}

#Preview {
    NavigationViewLink()
}
