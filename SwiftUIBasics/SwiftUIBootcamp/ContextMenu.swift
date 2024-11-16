//
//  ContextMenu.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 16/11/24.
//

import SwiftUI

struct ContextMenu: View {
    
    @State var backgroundColor:Color = .blue
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use context menu")
                .font(.subheadline)
        }
        .padding()
        .foregroundColor(.white)
        .background(backgroundColor)
        .cornerRadius(30)
        .contextMenu(
            menuItems: {
                Button(
                    action:{
                        backgroundColor = .yellow
                    }, label :{
                        Label("Share post",systemImage: "flame.fill")
                    }
                )
                Button(
                    action:{
                        backgroundColor = .red
                    }, label :{
                        Text("Report post")
                    }
                )
                Button(
                    action:{
                        backgroundColor = .green
                    }, label :{
                        HStack {
                            Text("Like post")
                            Image(systemName: "heart.fill")
                        }
                    }
                )
            }
        )
    }
}

#Preview {
    ContextMenu()
}
