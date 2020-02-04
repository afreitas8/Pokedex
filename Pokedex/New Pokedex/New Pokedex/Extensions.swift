//
//  Extensions.swift
//  New Pokedex
//
//  Created by Andrew Freitas on 2/3/20.
//  Copyright © 2020 Andrew Freitas. All rights reserved.
//

import UIKit

extension UIImageView {
    convenience init(color: UIColor){
        self.init(image:nil)
        self.backgroundColor = color
        self.layer.cornerRadius = 8
        
    }
}
