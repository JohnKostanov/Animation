//
//  ViewController.swift
//  Animation
//
//  Created by  Джон Костанов on 20/08/2019.
//  Copyright © 2019 John Kostanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let frame = CGRect(x: 100, y: 100, width: 100, height: 100)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let subview = UIView(frame: frame)
        subview.backgroundColor = .purple
        view.addSubview(subview)
    }


}

