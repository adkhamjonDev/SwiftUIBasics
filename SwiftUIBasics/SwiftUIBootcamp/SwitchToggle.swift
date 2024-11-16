//
//  SwitchToogle.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 16/11/24.
//

import SwiftUI

struct SwitchToggle: View {
    
    @State var toggleIsOn:Bool = false
     
    var body: some View {
        
        VStack{
            
            HStack{
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(
                isOn: $toggleIsOn,
                label: {
                    Text("Change Status")
                })
            .toggleStyle(SwitchToggleStyle(
                tint: Color.purple
            ))
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SwitchToggle()
}
