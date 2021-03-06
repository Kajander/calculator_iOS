//
//  HistoryView.swift
//  Calculator
//
//  Created by Joakim Kajan on 12.12.2019.
//  Copyright © 2019 JapeSoft. All rights reserved.
//

import UIKit

class HistoryView: UIView {
    
    var historyLabel = UILabel()
    var fontSize = CGFloat(0)

    override init(frame: CGRect) {
           super.init(frame: frame)
           setupView()
       }
       
       required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
    
    
    func setupView() {
        
        // if = Portrait, else = landscape
        if frame.height > frame.width {
            fontSize = CGFloat(22)
        }else{
            fontSize = CGFloat(16)
        }
        
        tag = ViewTags.historyViewTag
        historyLabel = CustomLabel(frame: CGRect.zero, value: "", fontSize: fontSize, textColor: .lightGray, numOfLines: 10)
        historyLabel.text = ""
        historyLabel.tag = LabelTags.historyLabelTag
        addSubview(historyLabel)
        historyLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5).isActive = true
        historyLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5).isActive = true
        historyLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5).isActive = true
        
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
