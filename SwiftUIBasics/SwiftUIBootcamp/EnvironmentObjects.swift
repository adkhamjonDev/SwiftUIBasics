//
//  EnvironmentObjects.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 18/11/24.
//

import SwiftUI

// ObservedObject
// StateObject
// EnvironmentObject

class EnvironmentViewModel: ObservableObject{
    @Published var dataArray: [String] = []
    
    init(){
        getData()
    }
    
    func getData(){
//        self.dataArray.append("Iphone")
//        self.dataArray.append("Ipad")
//        self.dataArray.append("IMac")
//        self.dataArray.append("Macbook")
        
        self.dataArray.append(contentsOf: ["iPhone","iPad","iMac","appleWatch"])
    }
    
}

struct EnvironmentObjects: View {
    
    @StateObject var viewModel:EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView{
            List{
                ForEach(viewModel.dataArray, id: \.self){ item in
                    NavigationLink(
                        destination:  DetailView(selectedItem: item),
                        label:{
                            Text(item)
                        }
                    )
                }
            }
            .navigationTitle("IOS Devices")
            
        }
        .environmentObject(viewModel)
        .accentColor(.white)
    }
}


struct DetailView:View{
    
    let selectedItem:String

    //@ObservedObject var viewModel:EnvironmentViewModel
    
    var body:some View{
        ZStack{
            //background
            Color.orange.ignoresSafeArea()
            
            // foreground
            NavigationLink(
                destination: FinalView(),
                label:{
                    Text(selectedItem)
                        .font(.headline)
                        .foregroundColor(.orange)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(30)
                }
            )
            
        }
    }
}

struct FinalView:View{
    
    @EnvironmentObject var viewModel:EnvironmentViewModel
    
    var body:some View{
     
        ZStack{
            //background
            LinearGradient(
                gradient: Gradient(colors: [.red,.blue]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            // foreground
            
            ScrollView{
                
                VStack(spacing:20){
                    ForEach(viewModel.dataArray,id: \.self) { item in
                            Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
                
            }
        }
    }
}

#Preview {
    EnvironmentObjects()
    //FinalView()
    //DetailView(selectedItem: "iPhone")
}
