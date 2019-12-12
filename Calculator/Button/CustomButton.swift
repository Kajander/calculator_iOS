//
//  Button.swift
//  Calculator
//
//  Created by Joakim Kajan on 10.12.2019.
//  Copyright © 2019 JapeSoft. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    
    var title: String
    var color: UIColor
    let cornerRadius = CGFloat(5)
    
    init(frame: CGRect, title: String, color: UIColor) {
        self.title = title
        self.color = color
        
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupButton() {
        
        setTitle(title, for: .normal)
        setTitleColor(.black, for: .normal)
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 32)
        backgroundColor = color
        layer.cornerRadius = cornerRadius
        
    }
    
    
   
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
