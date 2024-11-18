//
//  ListSwipeActions.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 18/11/24.
//

import SwiftUI

struct ListSwipeActions: View {
    @State var fruits:[String] = [
        "Apples",
        "Orange",
        "Banana",
        "Peach",
    ]
    var body: some View {
        List{
//            ForEach(fruits,id: \.self){ fruit in
//                Text(fruit.capitalized)
//            }
            
            ForEach(fruits,id: \.self){
                Text($0.capitalized)
                    .swipeActions(
                        edge: .trailing,
                        allowsFullSwipe: true
                    ){
                        Button("Arhieve") {
                            
                        }
                        .tint(.green)
                        Button("Save") {
                            
                        }
                        .tint(.blue)
                        Button("Junk") {
                            
                        }
                        .tint(.black)
                    }
                    .swipeActions(
                        edge: .leading,
                        allowsFullSwipe: false
                    ){
                        Button("Share") {
                            
                        }
                        .tint(.yellow)
                    }
            }
            //.onDelete(perform: delete)
            
        }
    }
    private func delete(index:IndexSet){
        fruits.remove(atOffsets: index)
    }
}

#Preview {
    ListSwipeActions()
}
