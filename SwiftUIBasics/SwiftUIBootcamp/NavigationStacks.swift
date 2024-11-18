//
//  NavigationStacks.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 18/11/24.
//

import SwiftUI

struct NavigationStacks: View {
    
    let fruits:[String] = [
        "Apples",
        "Orange",
        "Banana"
    ]
    
    @State var stackPath:[String] = []
    
    var body: some View {
        
        NavigationStack(
            path: $stackPath
        ){
            ScrollView{
                VStack(spacing:16){
                    
                    Button("Super segue!"){
                        stackPath.append(contentsOf: [
                            "Cocunut","Watermelon" ]
                        )
                    }
                    
                    
                    ForEach(fruits, id:\.self){ fruit in
                        NavigationLink(
                            value:fruit,
                            label:{
                                Text(fruit)
                            }
                        )
                    }
                    
                    ForEach(0..<10){ x in
                        
                        NavigationLink(
                            value: x
                        ){
                            Text("Click me : \(x)")
                        }
                        
//                        NavigationLink(
//                            destination: {
//                                MySecondScreen(value: x)
//                            }, label:{
//                                Text("Click me")
//                            }
//                        )
                    }
                }
            }
            .navigationTitle("Nav stack")
            .navigationDestination(for: Int.self) { value in
                MySecondScreen(value: value)
            }
            .navigationDestination(for: String.self) { value in
               Text("ANOTHER SCREEN: \(value)")
            }
        }
        
        NavigationStack{
            
//            ScrollView{
//                VStack(spacing:16){
//                    
//                    ForEach(fruits, id:\.self){ fruit in
//                        NavigationLink(
//                            value:fruit,
//                            label:{
//                                Text(fruit)
//                            }
//                        )
//                    }
//                    
//                    ForEach(0..<10){ x in
//                        
//                        NavigationLink(
//                            value: x
//                        ){
//                            Text("Click me : \(x)")
//                        }
//                        
////                        NavigationLink(
////                            destination: {
////                                MySecondScreen(value: x)
////                            }, label:{
////                                Text("Click me")
////                            }
////                        )
//                    }
//                }
//            }
//            .navigationTitle("Nav stack")
//            .navigationDestination(for: Int.self) { value in
//                MySecondScreen(value: value)
//            }
//            .navigationDestination(for: String.self) { value in
//               Text("ANOTHER SCREEN: \(value)")
//            }
            
        }
    }
}

struct MySecondScreen: View {
    
    let value:Int
    
    init(value:Int){
        self.value = value
        print("INIT SCREEN \(value)")
    }
    
    var body: some View {
        Text("Screen -  \(value)")
    }
}

#Preview {
    NavigationStacks()
}
