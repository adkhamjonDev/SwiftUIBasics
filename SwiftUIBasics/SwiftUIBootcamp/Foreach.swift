//
//  ForeachStatement.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 14/11/24.
//

import SwiftUI

struct Foreach: View {
    let data: [String] = ["HI","HELLO","HEY EVERYONE"]
    let myString: String = "Hello"
    var body: some View {
//        VStack{
//            ForEach(0..<10){index in
//                HStack{
//                    Circle()
//                        .frame(width: 30,height: 30)
//                    
//                    Text("Index is: \(index)")
//                }
//            }
//        }
        
                VStack{
                    ForEach(data.indices){ index in
                        HStack{
                            Text("\(data[index]): \(index)")
                        }
                    }
                }
    }
}

#Preview {
    Foreach()
}
