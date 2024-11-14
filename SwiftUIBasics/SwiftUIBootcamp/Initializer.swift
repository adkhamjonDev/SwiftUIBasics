//
//  Initializer.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 14/11/24.
//

import SwiftUI

struct Initializer: View {

    let backgroundColor:Color
    
    let count:Int
    let title:String
    
//    init(backgroundColor: Color, count: Int, title: String) {
//        self.backgroundColor = backgroundColor
//        self.count = count
//        self.title = title
//    }
    
    init(count: Int, title: Fruit) {
        
        self.count = count
        
        if title == .apples {
            self.title = "Apples"
            self.backgroundColor = .red
        }else{
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }

    enum Fruit{
        case apples
        case orange
    }

    var body: some View {
        VStack(spacing:12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text("\(title)")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    //Initializer(backgroundColor: .red,count: 55,title: "Apples")
    HStack{
        Initializer(count: 5,title: .apples)
        Initializer(count: 10,title: .orange)
    }
}

