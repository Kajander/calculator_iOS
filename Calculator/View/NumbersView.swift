//
//  NumbersView.swift
//  Calculator
//
//  Created by Joakim Kajan on 12.12.2019.
//  Copyright © 2019 JapeSoft. All rights reserved.
//

import UIKit

class NumbersView: UIView {
    
    var firstValueLabel = UILabel()
    var secondValueLabel = UILabel()
    var symbolLabel = UILabel()
    var summarySymbolLabel = UILabel()
    var summaryValueLabel = UILabel()
    var leadingLayoutAnchor = NSLayoutXAxisAnchor()
    
    var fontSize = CGFloat(0)
    var labelLeadConst = CGFloat()
    var padding = CGFloat(5)
    var labelHeight = CGFloat(0)
    var symbolWidth = CGFloat()
    var fullHeight = CGFloat()
    var lineHeight = CGFloat()
    
    var width: CGFloat
    var height : CGFloat
    
    override init(frame: CGRect) {
        self.width = frame.width
        self.height = frame.height
        
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        tag = ViewTags.numbersViewTag
        
        labelHeight = height / 20
        symbolWidth = labelHeight
        labelLeadConst = padding + 25
        
        
        // if = Portrait, else = landscape
        if frame.height > frame.width {
            fontSize = CGFloat(48)
            lineHeight = 5
            
            leadingLayoutAnchor = self.leadingAnchor

        }else{
            fontSize = CGFloat(26)
            lineHeight = 2
            // create scientific
            leadingLayoutAnchor = self.centerXAnchor
        }
        
        
        for title in LabelTitles.tags {
            
            let label = CustomLabel(frame: CGRect.zero, value: title, fontSize: fontSize, textColor: .white, numOfLines: 1)
            addSubview(label)
            switch title {
            case "1":
                label.tag = LabelTags.firstValueLabelTag
                label.text = "0"
                label.leadingAnchor.constraint(equalTo: self.leadingLayoutAnchor, constant: labelLeadConst).isActive = true
                label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding).isActive = true
                label.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -labelHeight - 4 * padding).isActive = true
            case "2":
                label.tag = LabelTags.secondValueLabelTag
                label.text = ""
                label.leadingAnchor.constraint(equalTo: self.leadingLayoutAnchor, constant: labelLeadConst).isActive = true
                label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding).isActive = true
                label.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -( 2 * labelHeight -
                    5 * -padding)).isActive = true
            case "3":
                label.tag = LabelTags.resultValueLabelTag
                label.text = ""
                label.leadingAnchor.constraint(equalTo: self.leadingLayoutAnchor, constant: labelLeadConst).isActive = true
                label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding).isActive = true
                label.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -padding).isActive = true
            case "4":
                label.tag = LabelTags.resultSymbolLabelTag
                label.text = "="
                label.leadingAnchor.constraint(equalTo: self.leadingLayoutAnchor, constant: padding).isActive = true
                label.widthAnchor.constraint(equalToConstant: symbolWidth).isActive = true
                label.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -padding).isActive = true
            case "5":
                label.tag = LabelTags.symboLabelTag
                label.text = ""
                label.leadingAnchor.constraint(equalTo: self.leadingLayoutAnchor, constant: padding).isActive = true
                label.widthAnchor.constraint(equalToConstant: symbolWidth).isActive = true
                label.heightAnchor.constraint(equalToConstant: labelHeight).isActive = true
                label.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -labelHeight - 4 * padding).isActive = true
                
            default:
                print("Label problems :S")
            }
            label.heightAnchor.constraint(equalToConstant: labelHeight).isActive = true

        }
        fullHeight = 5 * labelHeight + padding

        heightAnchor.constraint(equalToConstant: fullHeight).isActive = true
        setupLine()
    }
    
    func setupLine(){
        let lineView = UIView()
        lineView.backgroundColor = .white
        lineView.layer.cornerRadius = 2
        lineView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(lineView)
        lineView.leadingAnchor.constraint(equalTo: self.leadingLayoutAnchor, constant: 5).isActive = true
        lineView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5).isActive = true
        lineView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -labelHeight - 2 * padding ).isActive = true
        lineView.heightAnchor.constraint(equalToConstant: lineHeight).isActive = true
    }
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
}
