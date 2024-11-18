//
//  ScrollView.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 14/11/24.
//

import SwiftUI

struct ScrollviewAndLazy: View {
    

    
    var body: some View {
//        ScrollView(.horizontal,showsIndicators: false,content:{
//           
//                HStack{
//                    ForEach(0..<100){ index in
//                        
//                        
//                        Rectangle()
//                            .fill(.blue)
//                            .frame(width:300,height: 300)
//                            
//                    }
//                   
//            }
//        })
        
        ScrollView{
            LazyVStack{
                ForEach(0..<100){ index in
                    
                    ScrollView(.horizontal,showsIndicators: false){

                        LazyHStack{
                            ForEach(0..<20){ index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.white)
                                    .frame(width: 200,height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                      
                    }
            
                   
                }
            }
        }
        
    }
}

#Preview {
    ScrollviewAndLazy()
}
