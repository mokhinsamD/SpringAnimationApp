//
//  Animation.swift
//  SpringAnimationApp
//
//  Created by Дарина Самохина on 02.11.2022.
//
import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.2f", force))
        duration: \(String(format: "%.2f", duration))
        delay: \(String(format: "%.2f", delay))
        """
    }
    
    static func getAnimation() -> Animation {
        Animation(
            preset: (DataStore.shared.presets.randomElement()?.rawValue  ?? "shake"),
            curve: DataStore.shared.curves.randomElement()?.rawValue  ?? "easeIn",
            force: Double.random(in: 1...2),
            duration: Double.random(in: 0.8...2),
            delay: Double.random(in: 0.2...0.5)
        )
    }
}
