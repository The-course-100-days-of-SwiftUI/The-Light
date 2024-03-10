//
//  LightBulb.swift
//  Light3
//
//  Created by Margarita Mayer on 26/11/23.
//

import Foundation
import SwiftUI
import Observation

@Observable
class LightBulb {
    
    let light = Image(systemName: "lightbulb.fill")
    var color: Color
    var intensity: Double
    
 init(color: Color, intensity: Double) {
        self.color = color
        self.intensity = intensity
    }
    
}
