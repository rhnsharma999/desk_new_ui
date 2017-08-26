//
//  CustomCell.swift
//  deleteThisShit
//
//  Created by Rohan Lokesh Sharma on 26/08/17.
//  Copyright © 2017 webarch. All rights reserved.
//

import Foundation
import UIKit
class CustomCell:UITableViewCell{
    override init(style: UITableViewCellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

