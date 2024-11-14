//
//  LazyGrid.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 14/11/24.
//

import SwiftUI

struct LazyGrid: View {
    
    let columns:[GridItem] = [
        GridItem(.flexible(),spacing: 6,alignment: nil),
        GridItem(.flexible(),spacing: 6,alignment: nil),
        GridItem(.flexible(),spacing: 6,alignment: nil),
    ]
    
    var body: some View {
        ScrollView{
//            Rectangle()
//                .fill(.white)
//                .frame(height: 400)
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            LazyVGrid(
                columns:columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionFooters],
                content: {
                
                    Section(header:
                                Text("Section 1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .background(.blue)
                        .padding()
                    ){
                        
                        ForEach(0..<20){index in
                            Rectangle().frame(height: 150)
                        }
                    }
                    
                    Section(header:
                                Text("Section 2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .background(.red)
                        .padding()
                    ){
                        
                        ForEach(0..<20){index in
                            Rectangle()
                                .fill(.green)
                                .frame(height: 150)
                        }
                    }
                    
                
                       
                }
            )
            
          
        }
    }
}

#Preview {
    LazyGrid()
}
