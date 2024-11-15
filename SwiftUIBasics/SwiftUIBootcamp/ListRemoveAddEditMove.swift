//
//  ListRemoveAddEditMove.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 15/11/24.
//

import SwiftUI

struct ListRemoveAddEditMove: View {
    
    @State var fruits:[String] = [
        "Apples",
        "Orange",
        "Banana",
        "Peach",
    ]
    
    @State var vegatables:[String] = [
        "Tomato",
        "Potato",
        "Carrot"
    ]
    
    var body: some View {
        
        NavigationView {
            List{
                Section(
                    header: HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                            
                    }.font(.headline)
                        .foregroundColor(.orange)
                ){
                    ForEach(fruits,id: \.self){ fruit in
                        Text(fruit.capitalized)
                            .font(.title)
                            .foregroundColor(.orange)
                            //.frame(maxWidth:.infinity,maxHeight: .infinity)
                            //.background(.pink)
                            .padding(.vertical)
                    }
                    
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
                
                Section(
                    header: Text("Vegatables")
                ){
                    ForEach(vegatables,id: \.self){ vegatables in
                        Text(vegatables.capitalized)
                            
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)

                }
//                .swipeActions(
//                    edge: .trailing) {
//                    Button(role: .destructive){
//                        print("Delete Section 1")
//                    } label: {
//                        Label("Delete", systemImage: "trash")
//                    }
//                }
            }
            .accentColor(.purple)
            //.listStyle(InsetGroupedListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(),trailing: AddButton)
        }
        .accentColor(.red)
    }
    
    var AddButton: some View{
        Button("Add"){
            add("Coconut")
        }
    }
    
    func delete(indexSet:IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    func move(indexSet:IndexSet,toOffset:Int){
        fruits.move(fromOffsets: indexSet, toOffset: toOffset)
    }
    func add(_ fruit:String){
        fruits.append(fruit)
    }
}

#Preview {
    ListRemoveAddEditMove()
}
