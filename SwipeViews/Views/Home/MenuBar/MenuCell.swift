//
//  MenuCell.swift
//  SwipeViews
//
//  Created by Roberto Guzman on 2/1/18.
//  Copyright © 2018 Roberto Guzman. All rights reserved.
//

import UIKit

class MenuCell: UICollectionViewCell {
    
    let title: UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = Theme.Colors.textHint.color
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    override var isHighlighted: Bool {
        didSet {
            title.textColor = isHighlighted ? Theme.Colors.textPrimary.color : Theme.Colors.textHint.color
            title.font = isHighlighted ? Theme.Fonts.pageTitleFont.font : Theme.Fonts.pageTitleFont.font
        }
    }
    
    override var isSelected: Bool {
        didSet {
            title.textColor = isSelected ? Theme.Colors.textPrimary.color : Theme.Colors.textHint.color
            title.font = isSelected ? Theme.Fonts.pageTitleFont.font : Theme.Fonts.pageTitleFont.font
        }
    }
    
    func setupViews() {
        addSubview(title)
        addConstraintsWithFormat(format: "H:[v0(65)]", views: title)
        addConstraintsWithFormat(format: "V:[v0(65)]", views: title)
        addConstraint(NSLayoutConstraint(item: title, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: title, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 8))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Init(coder:) has not been implemented")
    }
    
}
