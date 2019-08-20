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
    let label = UILabel(frame: CGRect(x: 50, y: 50, width: 50, height: 50))
    let newFrame = CGRect(x: 150, y: 150, width: 200, height: 200)
    var subview: UIView!
    var touchCounter = 0 {
        didSet {
            label.text = "\(touchCounter)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        subview = UIView(frame: initialFrame)
        subview.backgroundColor = .purple
        view.addSubview(subview)
        
        label.text = "0"
        label.font = UIFont.systemFont(ofSize: 25)
        view.addSubview(label)
        
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
                self.subview.frame = self.newFrame
            }
        case 3:
            UIView.animate(withDuration: 1) {
                self.subview.frame  = self.initialFrame
            }
        case 4:
            UIView.animate(withDuration: 0.5, animations: {
                self.subview.backgroundColor  = .orange
                self.subview.frame = self.newFrame
            }) { _ in
                UIView.animate(withDuration: 0.5, animations: {
                    self.subview.backgroundColor  = .purple
                    self.subview.frame = self.initialFrame
                })
            }
        case 5:
            UIView.animate(withDuration: 0.5, delay: 1, options: [.autoreverse, /*.repeat*/], animations: {
                self.subview.backgroundColor  = .orange
                self.subview.frame = self.newFrame
            }) { _ in
                self.subview.backgroundColor  = .purple
                self.subview.frame = self.initialFrame
            }
        case 6:
            let scaleTransform = CGAffineTransform(scaleX: 2, y: 2)
            let roteteTransform = CGAffineTransform(rotationAngle: .pi)
            let translateTransfarm = CGAffineTransform(translationX: 200, y: 200)
            let comboTransform = scaleTransform.concatenating(roteteTransform).concatenating(translateTransfarm)
            
            UIView.animate(withDuration: 3) {
                self.subview.transform = comboTransform
            }
            
        default:
            touchCounter = 0
            
        }
    }
    
    
}

