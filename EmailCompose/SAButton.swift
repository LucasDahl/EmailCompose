//
//  SAButton.swift
//  EmailCompose
//
//  Created by Lucas Dahl on 1/20/19.
//  Copyright © 2019 Lucas Dahl. All rights reserved.
//

import UIKit

class SAButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupButton() {
        
        setTitleColor(.white, for: .normal)
        backgroundColor = UIColor(red: 255/255, green: 5/255, blue: 41/255, alpha: 1)
        titleLabel?.font = .boldSystemFont(ofSize: 20)
        layer.cornerRadius = frame.size.height / 2
        
    }
    
}
