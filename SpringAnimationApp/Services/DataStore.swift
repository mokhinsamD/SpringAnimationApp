//
//  DataStore.swift
//  SpringAnimationApp
//
//  Created by Дарина Самохина on 02.11.2022.
//

import SpringAnimation

class DataStore {
    
    static let shared = DataStore()
    
    let presets = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
//    let presets = [
//       "pop",
//        "slideLeft",
//        "slideRight",
//        "slideDown",
//        "slideUp",
//        "squeezeLeft",
//        "squeezeRight",
//        "squeezeDown",
//        "squeezeUp",
//        "fadeIn",
//        "fadeOut",
//        "fadeOutIn",
//        "fadeInLeft",
//        "fadeInRight",
//        "fadeInDown",
//        "fadeInUp",
//        "zoomIn",
//        "zoomOut",
//        "fall",
//        "shake",
//        "flipX",
//        "flipY",
//        "morph",
//        "squeeze",
//        "flash",
//        "wobble",
//        "swing"
//    ]
//
//    let curves = [
//        "easeIn",
//        "easeOut",
//        "easeInOut",
//        "linear",
//        "spring",
//        "easeInSine",
//        "easeOutSine",
//        "easeInOutSine",
//        "easeInQuad",
//        "easeOutQuad",
//        "easeInOutQuad",
//        "easeInCubic",
//        "easeOutCubic",
//        "easeInOutCubic",
//        "easeInQuart",
//        "easeOutQuart",
//        "easeInOutQuart",
//        "easeInQuint",
//        "easeOutQuint",
//        "easeInOutQuint",
//        "easeInExpo",
//        "easeOutExpo",
//        "easeInOutExpo",
//        "easeInCirc",
//        "easeOutCirc",
//        "easeInOutCirc",
//        "easeInBack",
//        "easeOutBack",
//        "easeInOutBack",
//    ]
//
    private init() {}
}
