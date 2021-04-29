//
//  AnimationModel.swift
//  SpringPodsApp
//
//  Created by Mac on 28.04.2021.
//



struct AnimationModel {
    let force: Float
    let delay: Float
    let duration: Float
    let animation: String
    let curve: String
    
    static func getAnimationSetting() -> AnimationModel {
        
        let anim = TypeAnimation.shared
        
        let force = Float.random(in: 0..<1.5)
        let delay = Float.random(in: 0..<1.5)
        let duration = Float.random(in: 0..<3)
        let animation = anim.animationType.randomElement() ?? "slideleft"
        let curve = anim.curveType.randomElement() ?? "easeIn"
        
        let animationSettings = AnimationModel(
            force: force,
            delay: delay,
            duration: duration,
            animation: animation,
            curve: curve
        )
        return animationSettings
    }
    
}



