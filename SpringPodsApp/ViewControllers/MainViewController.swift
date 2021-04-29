//
//  ViewController.swift
//  SpringPodsApp
//
//  Created by Mac on 28.04.2021.
//

import Spring

class MainViewController: UIViewController {

    
    @IBOutlet var animatingScreen: SpringView!
    @IBOutlet var animationInfoLabel: UILabel!
    @IBOutlet var animationButton: UIButton!
    
    var animation = AnimationModel.getAnimationSetting()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationButton.layer.cornerRadius = 10
        animatingScreen.layer.cornerRadius = 10
    }
    

    @IBAction func animButtonTapped(_ sender: UIButton) {
        animate()
        updateAnimation()
    }
    
    private func animate() {
        animatingScreen.animation = animation.animation
        animatingScreen.force = CGFloat(animation.force)
        animatingScreen.delay = CGFloat(animation.delay)
        animatingScreen.duration = CGFloat(animation.duration)
        animatingScreen.curve = animation.curve
        animatingScreen.animate()
    }
    
    private func updateAnimation() {
        let nextAnimation = AnimationModel.getAnimationSetting()
        
        animationButton.setTitle("Следующая анимация: \(nextAnimation.animation)",
                    for: .normal)
        
        animationInfoLabel.text = "Анимация: \(animation.animation)\n Кривая: \(animation.curve)\n Сила: \(String(format: "%.2f",animation.force))\n Задержка: \(String(format: "%.2f",animation.delay))\n Длительность: \(String(format: "%.2f",animation.duration))"
        
        animation = nextAnimation
    }
    
}
