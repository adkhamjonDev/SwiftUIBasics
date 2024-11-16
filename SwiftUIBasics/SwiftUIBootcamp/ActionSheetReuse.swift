//
//  ActionSheetReuse.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 16/11/24.
//

import SwiftUI

struct ActionSheetReuse: View {
    
    @State var actionSheet:Bool = false
    @State var actionSheetOption:ActionSheetOption = .isOtherPost
    
    enum ActionSheetOption{
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack{
            HStack {
                Circle()
                    .frame(width: 30,height: 30)
                
                Text("@username")
                Spacer()
                Button(
                    action: {
                        actionSheetOption = .isMyPost
                        actionSheet.toggle()
                    }, label: {
                        Image(systemName: "ellipsis")
                    }
                ).accentColor(.primary)
                
            }
            .padding()
            
            Rectangle()
                .aspectRatio(1.0,contentMode: .fit)
           
        }
        .actionSheet(isPresented: $actionSheet, content:  getActionSheet)
    }
    
    func getActionSheet()->ActionSheet{
//        return ActionSheet(
//            title:Text("This is the title")
//        )
        
        
//        let button1:ActionSheet.Button = .default(Text("DEFAULT"))
//        let button2:ActionSheet.Button = .destructive(Text("DESTRICTIVE"))
//        let button3:ActionSheet.Button = .cancel()
//        
//        return ActionSheet(
//            title:Text("This is the title"),
//            message: Text("This is the message"),
//            buttons: [button1,button2,button3]
//        )
        
        
        
        let shareButton:ActionSheet.Button = .default(Text("Share")){
            // add code to share post
        }
        
        let reportButton:ActionSheet.Button = .destructive(Text("Report")){
            // add code to report post
        }
        
        let deleteButton:ActionSheet.Button = .destructive(Text("Delete")){
            // add code to delete post
        }
        
        let cancelButton:ActionSheet.Button = .cancel()
        
        let title = Text("What woud you like to do?")
        
        switch actionSheetOption{
        case .isOtherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton,reportButton,cancelButton]
                )
        case .isMyPost:
                    return ActionSheet(
                        title: title,
                        message: nil,
                        buttons: [shareButton,reportButton,deleteButton,cancelButton]
                        )
        }
        
    }
}

#Preview {
    ActionSheetReuse()
}
