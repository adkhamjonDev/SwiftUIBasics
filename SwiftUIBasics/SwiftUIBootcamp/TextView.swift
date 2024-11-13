//
//  TextView.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 13/11/24.
//
import SwiftUI






struct TextView:View{
    var body:some View{
        Text("Hello World!".capitalized)
            //.font(.system(size: 24,weight: .semibold,design: .serif))
            //.baselineOffset(10.0) // space beetwen rows of text
            //.kerning(5.0) // space beetwen letters of text
            .foregroundColor(Color.green)
            .multilineTextAlignment(.leading)
            .frame(width: 200,height: 100,alignment: .leading)
            .minimumScaleFactor(0.1)
//            .font(.body)
//            .bold()
//            .underline(true,color:Color.red)
//            .italic()
//            .strikethrough(true,color:Color.red)
    }
}

#Preview {
    TextView()
}
