//
//  Badges.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 18/11/24.
//

import SwiftUI

// List
// Tabview
struct Badges: View {
    var body: some View {
//        TabView{
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge("New")
//
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge(42)
//            
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge(6)
//        }
        
        
        List{
            Text("Hello world!")
                .badge("NEW ITEMS!")
            Text("Hello world!")
                .badge(24)
            Text("Hello world!")
                .badge(23)
            Text("Hello world!")
            Text("Hello world!")
            Text("Hello world!")
        }
    }
}

#Preview {
    Badges()
}
