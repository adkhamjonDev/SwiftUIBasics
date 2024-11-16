//
//  DatePickerTime.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 16/11/24.
//

import SwiftUI

struct DatePickerTime: View {
    @State var date:Date = Date()
    
    let startingDate:Date = Calendar.current.date(
        from: DateComponents(
            year: 2024
//            month: 11,
//            day: 15
        )
    ) ?? Date()
        
    let endingate:Date = Date()
    
    var dateFormatter:DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .medium
        return formatter
    }
    
    var body: some View {
//        DatePicker(
//            "Select a date",
//            selection: $date
//        )
//        .padding(50)
//        .accentColor(.red)
//        //.datePickerStyle(CompactDatePickerStyle())
//        //.datePickerStyle(GraphicalDatePickerStyle())
//        .datePickerStyle(WheelDatePickerStyle())
        
//        DatePicker(
//            "Select Date",
//            selection: $date,
//            displayedComponents: [.date, .hourAndMinute]
//        )
        
        VStack {
            Text("SELECTED DATE IS:")
            Text(dateFormatter.string(from: date)).font(.title)
            DatePicker(
                "Select Date",
                selection: $date,
                in: startingDate...endingate,
                displayedComponents: [.date]
            )
            .accentColor(.red)
            .datePickerStyle(
                CompactDatePickerStyle()
            )
        }
    }
}

#Preview {
    DatePickerTime()
}
