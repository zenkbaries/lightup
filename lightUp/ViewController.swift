//
//  ViewController.swift
//  lightUp
//
//  Created by John Towery on 8/18/19.
//  Copyright © 2019 John Towery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.black
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            // Set the Center of the Circle
            // 1
            let circleCenter = touch.location(in: view)
            
            // Set a random Circle Radius
            // 2
            let circleWidth = CGFloat(25 + (arc4random() % 50))
            let circleHeight = circleWidth
            
            // Create a new CircleView
            // 3
            let circleView = CircleView(frame: CGRect(x: circleCenter.x, y: circleCenter.y, width: circleWidth, height: circleHeight))
            view.addSubview(circleView)
        }
    }


}

