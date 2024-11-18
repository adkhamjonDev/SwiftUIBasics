//
//  SwiftUIBasicsApp.swift
//  SwiftUIBasics
//
//  Created by Adkhamjon Rakhimov on 12/11/24.
//

import SwiftUI

@main
struct SwiftUIBasicsApp: App {
    @State private var modeldata = ModelData()
    var body: some Scene {
        WindowGroup {
            AsyncImages()
        }
    }
}
