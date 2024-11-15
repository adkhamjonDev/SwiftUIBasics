//
//  TernaryOperators.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 15/11/24.
//

import SwiftUI

struct TernaryOperators: View {
    
    @State var isStartingState:Bool = false
    
    var body: some View {
        VStack{
            Button("Button: \(isStartingState.description)"){
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "STARTING STATE!!!" : "ENDING STATE")
        
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(
                    isStartingState ? Color.red : Color.blue
                )
                .frame(
                    width: isStartingState ? 200 : 50,
                    height: isStartingState ? 200 : 50
                )
            
            
            Spacer()
        }
    }
}

#Preview {
    TernaryOperators()
}
