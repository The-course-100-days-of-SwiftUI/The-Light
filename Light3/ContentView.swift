//
//  ContentView.swift
//  Light3
//
//  Created by Margarita Mayer on 26/11/23.
//

import SwiftUI


struct ContentView: View {
     var lightbulb = LightBulb(color: .yellow, intensity: 1)
//    @State private var opacity: Double = 1
    @State private var addNewView: Bool = false
//    @State private var newColour: Color = .yellow
    
    var body: some View {
        VStack(spacing: 20) {
            lightbulb.light
                .imageScale(.large)
                .foregroundColor(lightbulb.color)
                .opacity(lightbulb.intensity)
                .scaleEffect(5)
                .padding()
            
            
            Button("On/off") {
                lightbulb.intensity = lightbulb.intensity == 1 ? 0.5 : 1
            }
            .padding(.top)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            
            
            Button("A new view") {
                addNewView.toggle()
            }
            .padding(.top)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            
            Button("Change color") {
                lightbulb.color = lightbulb.color == .yellow ? .red : .yellow
            }
            .padding(.top)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            
        }
        .padding()
        
        .sheet(isPresented: $addNewView, content: {
            NewView(addNewView: $addNewView, lightbulb: lightbulb)
        })
    }
}


#Preview {
    ContentView()
}
