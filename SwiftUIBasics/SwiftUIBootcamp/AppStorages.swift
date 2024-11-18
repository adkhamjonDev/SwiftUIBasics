//
//  AppStorage.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 18/11/24.
//

import SwiftUI

// for saving short data on app
// UserDefaults
// AppStorage

struct AppStorages: View {
    
    //@State var currentUserName:String?
    
    @AppStorage("name") var currentUserName:String?
    
    var body: some View {
        VStack(spacing:20){
            Text(currentUserName ?? "Add Name here")
            
            if let name = currentUserName{
                Text(name)
            }
            
            Button("Save"){
                let name = "Adkhamjon"
                currentUserName = name
                
                //UserDefaults.standard.set(name, forKey: "name")
                
            }
        }.onAppear{
            //currentUserName = UserDefaults.standard.string(forKey: "name")
        }
    }
}

#Preview {
    AppStorages()
}
