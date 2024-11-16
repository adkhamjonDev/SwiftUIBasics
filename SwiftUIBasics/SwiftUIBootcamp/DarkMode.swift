//
//  DarkMode.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 16/11/24.
//

import SwiftUI

struct DarkMode: View {


    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing:20) {
                    
                    Text("This text is primary")
                        .foregroundColor(.primary)
                    
                    Text("This text is secondary")
                        .foregroundColor(.secondary)
                    
                    Text("This text is black")
                        .foregroundColor(.black)
                    
                    Text("This text is white")
                        .foregroundColor(.white)
                    
                    Text("This text is red")
                        .foregroundColor(.red)
                    
                    Text("This text is globally adaptive")
                        .foregroundColor(Color("AdaptiveColor"))
                    
                    Text("This text is globally locally adaptive")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode")
        }
    }
}

#Preview {
    DarkMode()
}
