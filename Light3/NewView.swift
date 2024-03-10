//
//  NewModal.swift
//  Light3
//
//  Created by Margarita Mayer on 26/11/23.
//

import SwiftUI

struct NewView: View {
    
//    @Binding var opacity: Double
    @Binding var addNewView: Bool
//    @Binding var newColour: Color
    @Bindable var lightbulb: LightBulb
    
    var body: some View {
        
        
        return VStack {
            Image(systemName: "lightbulb.fill")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .accentColor(lightbulb.color)
                .opacity(lightbulb.intensity)
                .scaleEffect(5)
                .padding(.bottom, 30.0)
            
            
            Button("On/off") {
                lightbulb.intensity = lightbulb.intensity == 1 ? 0.5 : 1
            }
            .padding(.top)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            
            Button("Close") {
                addNewView = false
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
    }
}

//#Preview {
//    NewView()
//}
