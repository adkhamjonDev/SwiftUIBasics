//
//  SystemMaterialsAndBackgrounds.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 18/11/24.
//

import SwiftUI

struct SystemMaterialsAndBackgrounds: View {
    var body: some View {
        VStack {
            
            Spacer()
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50,height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 300)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image("icybay")
                .resizable()
        )
    }
}

#Preview {
    SystemMaterialsAndBackgrounds()
}
