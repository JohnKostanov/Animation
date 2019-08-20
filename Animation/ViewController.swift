//
//  ViewController.swift
//  Animation
//
//  Created by  Джон Костанов on 20/08/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let initialFrame = CGRect(x: 100, y: 100, width: 100, height: 100)
    var subview: UIView!
    var touchCounter = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        subview = UIView(frame: initialFrame)
        subview.backgroundColor = .purple
        view.addSubview(subview)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        touchCounter += 1
        
        switch touchCounter {
        case 1:
            UIView.animate(withDuration: 1) {
                self.subview.backgroundColor  = .orange
            }
        case 2:
            UIView.animate(withDuration: 1) {
                self.subview.backgroundColor  = .purple
                self.subview.frame = CGRect(x: 150, y: 150, width: 200, height: 200)
            }
        case 3:
            UIView.animate(withDuration: 3) {
                self.subview.frame  = self.initialFrame
            }
        default:
            touchCounter = 0
            
        }
    }


}

