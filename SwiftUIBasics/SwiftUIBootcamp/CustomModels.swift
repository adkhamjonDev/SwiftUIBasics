//
//  CustomModels.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 18/11/24.
//

import SwiftUI

struct UserModel:Identifiable{
    let id:String = UUID().uuidString
    let displayName:String
    let username:String
    let followerCount:Int
    let isVerified:Bool
}


struct CustomModels: View {
    
    @State var users:[UserModel] = [
//        "Nick",
//        "Emily",
//        "Samante",
//        "Chris",
        
        UserModel(displayName: "Nick", username: "nick123", followerCount: 100, isVerified: true),
        UserModel(displayName: "Emily", username: "emily123", followerCount: 55, isVerified: false),
        UserModel(displayName: "Samante", username: "samantee123", followerCount: 350, isVerified: true),
        UserModel(displayName: "Chris", username: "chris123", followerCount: 88, isVerified: false),
    ]
    
    var body: some View {
        NavigationView{
            
            List{
                
                ForEach(users){ user in
                    HStack(spacing:16) {
                        
                        Circle()
                            .frame(width: 35,height: 35)
                            .font(.headline)
                        
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                            Text("@\(user.username)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        
                        Spacer()
                        
                        if(user.isVerified){
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                       
                        
                        VStack{
                            
                            Text("\(user.followerCount)")
                                .font(.headline)
                            
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                            
                        }
                    }
                    .padding(.vertical,10)
                }
                
//                ForEach(users, id:\.self){user in
//                
//                    HStack(spacing:16) {
//                        
//                        Circle()
//                            .frame(width: 35,height: 35)
//                        
//                        Text(user.displayName)
//                    }
//                    .padding(.vertical,10)
//                    
//                } // inherit hashable to userModel
                
            }
            .navigationTitle("Users")
            .listStyle(InsetGroupedListStyle())
            
        }
    }
}

#Preview {
    CustomModels()
}
