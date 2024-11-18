//
//  OptionalsGuard.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 16/11/24.
//

import SwiftUI

struct OptionalsGuard: View {
    @State var currentUserId:String? = nil
    @State var displayText:String? = nil
    @State var loading:Bool=false
    var body: some View {
        NavigationView{
            
            VStack{
                
                Text("Here we are practicing safe coding!")
                if let text = displayText{
                    Text(text)
                        .font(.title)
                }
                
                if loading{
                    ProgressView()
                }
                
                Spacer()
                
            }
            .navigationTitle("Safe coding")
            .onAppear{
                loadData2()
            }
            
        }
    }
    
    func loadData(){
        
        if let userId = currentUserId{
            loading = true
            DispatchQueue.main.asyncAfter(deadline:.now()+3){
                displayText = "This is the new data! User id is: \(userId)"
                loading = false
            }
        } else{
            displayText = "Error! There is no user id"
        }
        
    }
    
    func loadData2(){
        
        guard let userId = currentUserId else{
            displayText = "Error! There is no user id"
            return
        }
        
        loading = true
        DispatchQueue.main.asyncAfter(deadline:.now()+3){
            displayText = "This is the new data! User id is: \(userId)"
            loading = false
        }
        
    }
}

#Preview {
    OptionalsGuard()
}
