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
    
    static func getAnimation() -> Animation {
        let dataStore = DataStore()
        
        return Animation(
            preset: dataStore.presets.randomElement() ?? "shake" ,
            curve: dataStore.curves.randomElement() ?? "easeIn",
            force: Double.random(in: 1...2),
            duration: Double.random(in: 0.8...2),
            delay: Double.random(in: 0.2...0.5)
        )
    }
}
