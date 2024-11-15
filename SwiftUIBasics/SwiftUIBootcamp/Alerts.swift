//
//  Alerts.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 15/11/24.
//

import SwiftUI

struct Alerts: View {
    @State var showAlert:Bool = false
    @State var alertType:MyAlerts? = nil
//    @State var alertTitle:String = ""
//    @State var alertTMessage:String = ""
    @State var backgroundColor:Color = .yellow
    
    
    enum MyAlerts{
        case success
        case error
    }
    
    
    var body: some View {
        ZStack {
            
            backgroundColor.ignoresSafeArea()
            
            VStack {
                Button("BUTTON 1"){
                    alertType = .error
//                    alertTitle = "Error uploading video"
//                    alertTMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                Button("BUTTON 2"){
                    alertType = .success
//                    alertTitle = "Successfully uploaded 🫡"
//                    alertTMessage = "The video successfully uploaded"
                    showAlert.toggle()
                }
            }
            .foregroundColor(.white)
           
            .alert(isPresented: $showAlert, content: {
                    getAlert()
                })
        }
    }
    //                Alert(
    //                    title:
    //                        Text("There was and error!")
    //                )
    private func getAlert() -> Alert{
        switch alertType {
        case .success:
            return Alert(
                title : Text("Successfully uploaded 🫡"),
                message: Text("The video successfully uploaded"),
                dismissButton: .default(Text("OK"),
                                        action: {
                                            backgroundColor =  .green
                                        }
                                       )
            )
        case .error:
            return Alert(
                title : Text("Error uploading video"),
                message: Text("he video could not be uploaded"),
                dismissButton: .default(Text("OK"),
                                        action: {
                                            backgroundColor =    .red
                                        }
                                       )
            )
        case nil:
            return Alert(
                title : Text("Something Wrong!"),
                message: Text("Something get wrong. Please check"),
                dismissButton: .default(Text("OK"))
            )
        }
        
        
//        return Alert(
//            title : Text("There was an error"),
//            message: Text("This is message of alert"),
//            primaryButton: .destructive(Text("Delete"), action: {
//                backgroundColor = .red
//            }),
//            secondaryButton: .cancel()
//        )
    }
}

#Preview {
    Alerts()
}
