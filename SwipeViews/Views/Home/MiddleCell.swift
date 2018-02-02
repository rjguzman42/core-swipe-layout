//
//  MiddleCell.swift
//  SwipeViews
//
//  Created by Roberto Guzman on 2/1/18.
//  Copyright © 2018 Roberto Guzman. All rights reserved.
//

import UIKit

class MiddleCell: UICollectionViewCell {
    
    var currentController = UIViewController()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Init(coder:) has not been implemented")
    }
    
    deinit {
    }
    
}
