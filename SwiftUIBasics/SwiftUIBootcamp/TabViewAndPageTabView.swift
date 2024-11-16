//
//  TabViewAndPageTabView.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 16/11/24.
//

import SwiftUI

struct TabViewAndPageTabView: View {
    
    @State var selectedTab:Int = 0
    
    let icons:[String] = [
        "heart.fill",
        "globe",
        "house.fill",
        "person.fill"
    ]
    
    var body: some View {
        
        
        
//        TabView(
//            selection: $selectedTab
//        ){
// 
//            HomeView(selectedTab: $selectedTab)
//                .tabItem{
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//                
//            
//            Text("BROWSW TAB")
//                .tabItem{
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//            
//            Text("PROFILE TAB")
//                .tabItem{
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//            
//        }
//        .accentColor(.red)
        
        
        
        
        TabView{
            
            ForEach(icons, id: \.self){ icon in
            
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.white)
                    .padding(40)
                
            }
            
        }
        .frame(height: 300)
        .background(
            RadialGradient(
                gradient: Gradient(colors:[.red, .blue]),
                center: .center,
                startRadius: 5,
                endRadius: 300
            )
        )
        .tabViewStyle(PageTabViewStyle())
        
        
    }
}

#Preview {
    TabViewAndPageTabView()
}

struct HomeView: View {
    
    @Binding var selectedTab:Int
    
    var body: some View {
        ZStack{
            
            Color.red
            
            VStack{
                Text("Home")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                
                Button(
                    action:{
                        selectedTab = 2
                    }, label: {
                        Text("Go to Profile")
                            .font(.headline)
                    }
                )
                .padding()
                .background(.white)
                .cornerRadius(10)
            }
            
        }
    }
}
