//
//  TrafficLightModel.swift
//  TrafficLight
//
//  Created by Денис Александров on 30.08.2024.
//

import Foundation

enum LightColor {
    case red
    case yellow
    case green
}

struct TrafficLightModel {
    var currentLight: LightColor = .red
    
    mutating func nextLight() {
        switch currentLight {
        case .red:
            currentLight = .yellow
        case .yellow:
            currentLight = .green
        case .green:
            currentLight = .red
        }
    }
}
