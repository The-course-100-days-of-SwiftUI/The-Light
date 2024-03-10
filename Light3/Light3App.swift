//
//  Light3App.swift
//  Light3
//
//  Created by Margarita Mayer on 26/11/23.
//

import SwiftUI

@main
struct Light3App: App {
    @State var lightbulb = LightBulb(color: .yellow, intensity: 1)
    var body: some Scene {
        WindowGroup {
            ContentView().environment(lightbulb)
        }
    }
}
