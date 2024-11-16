//
//  Pickers.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 16/11/24.
//

import SwiftUI

struct Pickers: View {
    
    @State var pickerSelection:String = "Most Recent"
    
    let filterOptions: [String] = [
        "Most Recent",
        "Most Popular",
        "Most Liked",
    ]
    
    
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red // update color for whole app where segment was used
        let attributes:[NSAttributedString.Key:Any] = [
            .foregroundColor:UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(
            attributes,
            for: UIControl.State.selected
        )
    }
    
    var body: some View {
//        VStack{
//            
//            HStack{
//                Text("Age:")
//                Text(pickerSelection)
//            }
//            
//            Picker(
//                selection: $pickerSelection,
//                label: Text("Picker"),
//                content: {
//                    ForEach(18..<100){ age in
//                    
//                        Text("\(age)")
//                            .font(.headline)
//                            .foregroundColor(.red)
//                            .tag("\(age)")
//                    }
//                }
//            )
//            .background(.gray.opacity(0.3))
//        }
        
        
//        Picker(
//            selection: $pickerSelection,
//            label:
//                HStack{
//                    Text("Picker")
//                    Text(pickerSelection)
//                }
//                .font(.headline)
//                .foregroundColor(.white)
//                .padding()
//                .padding(.horizontal)
//                .background(.blue)
//                .cornerRadius(10)
//                .shadow(color: Color.blue, radius: 10)
//            ,
//            content: {
//                ForEach(filterOptions, id:\.self){ option in
//                
//                    HStack {
//                        Text(option)
//                        Image(systemName: "heart.fill")
//                    } .tag(option)
//                }
//            }
//        )
//        .pickerStyle(MenuPickerStyle())
        
        
        
        Picker(
            selection: $pickerSelection,
            label:
                HStack{
                    Text("Picker")
                    Text(pickerSelection)
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(.blue)
                .cornerRadius(10)
                .shadow(color: Color.blue, radius: 10)
            ,
            content: {
                ForEach(filterOptions.indices){ index in
                
                    Text(filterOptions[index]).tag(filterOptions[index])
                }
            }
        )
        .pickerStyle(SegmentedPickerStyle())
        //.background(.red)
        
        
        
        
    }
}

#Preview {
    Pickers()
}
