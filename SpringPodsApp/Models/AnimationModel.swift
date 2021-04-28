//
//  AnimationModel.swift
//  SpringPodsApp
//
//  Created by Mac on 28.04.2021.
//

import UIKit

struct AnimationModel {
    var force: CGFloat
    var delay: CGFloat
    var duration: CGFloat
    var repeatCount: Float
    var animation: String
    var curve: String
    
    static func getAnimationSetting() -> AnimationModel {
        
        let anim = TypeAnimation.shared
        
        let force = CGFloat.random(in: 0..<1.5)
        let delay = CGFloat.random(in: 0..<1.5)
        let duration = CGFloat.random(in: 0..<3)
        let repeatCount = Float(Int.random(in: 0..<6))
        let animation = anim.animationType.randomElement()!
        let curve = anim.curveType.randomElement()!
        
        let animationSettings = AnimationModel(
            force: force, delay: delay, duration: duration,
            repeatCount: repeatCount, animation: animation, curve: curve
        )
        return animationSettings
    }
    
}



