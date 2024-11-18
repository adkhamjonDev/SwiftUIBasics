//
//  NavigationSplitView.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 18/11/24.
//

import SwiftUI

struct NavigationSplitViews: View {
    var body: some View {
        NavigationSplitView {
            Color.red
        } content: {
            Color.blue
        } detail: {
            Color.green
        }
        
    }
}

#Preview {
    NavigationSplitViews()
}
