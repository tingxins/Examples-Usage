//
//  ViewController.swift
//  TXPodForSwiftTest
//
//  Created by tingxins on 21/06/2017.
//  Copyright © 2017 tingxins. All rights reserved.
//

import UIKit
import TXScrollLabelView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSubviews()
    }
    
    func setupSubviews() {
        // 1.leftRight
        add(with: .leftRight, velocity: 1, is: false, y:1);
        // 2.upDown
        add(with: .upDown, velocity: 2, is: false, y:2)
        // 3.flipNoRepeat
        add(with: .flipNoRepeat, velocity: 2, is: false, y:3)
        // 4.flipRepeat
        add(with: .flipRepeat, velocity: 2, is: false, y:4)
    }
    
    func add(with type: TXScrollLabelViewType, velocity: TimeInterval, is array: Bool, y: Double) {
        let scrollTitle = "如果在使用 TXScrollLabelView 的过程中出现bug，请及时联系，我会尽快进行修复。如果有更好的点子，直接 Open an issue 或者 submit a pr on GitHub。Thanks."
        
        let scrollLabelView = TXScrollLabelView.scroll(withTitle: scrollTitle, type: type, velocity: velocity, options: .curveEaseInOut)
        scrollLabelView?.frame = CGRect(x: 50, y: 100 * (y + 0.7), width: 250, height: 40)
        
        guard let scrollView = scrollLabelView else { return }
        
        view.addSubview(scrollView)
        
        scrollView.beginScrolling()
    }
}

