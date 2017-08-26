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
    
    var titleLabel:UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false;
        view.font = UIFont.systemFont(ofSize: 20)
        view.textColor = .white;
        view.text = "Class CS1013"
        return view
    }()
    var subLabel:UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false;
        view.font = UIFont.systemFont(ofSize: 13)
        view.textColor = .lightGray;
        view.text = "Some Teacher Here"
        return view
    }()
    
    var container:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false;
        view.backgroundColor = UIColor(red: 54/255, green: 62/255, blue: 77/255, alpha: 1.0)
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
        return view;
    }()
    
    var highLight:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false;
        view.backgroundColor = .white;
        return view;
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
extension CustomCell{
    func setupViews(){
        
        addSubview(container)
        
        container.addSubview(titleLabel)
        container.addSubview(subLabel)
        container.addSubview(highLight)
        
        NSLayoutConstraint.activate([
            highLight.leftAnchor.constraint(equalTo: container.leftAnchor),
            highLight.topAnchor.constraint(equalTo: container.topAnchor),
            highLight.bottomAnchor.constraint(equalTo: container.bottomAnchor),
            highLight.widthAnchor.constraint(equalToConstant: 5.0)
            ])
        
        NSLayoutConstraint.activate([
            container.leftAnchor.constraint(equalTo: leftAnchor,constant:10),
            container.rightAnchor.constraint(equalTo: rightAnchor,constant:-10),
            container.topAnchor.constraint(equalTo: topAnchor),
            container.bottomAnchor.constraint(equalTo: bottomAnchor,constant:-10)
            ])

        NSLayoutConstraint.activate([
            titleLabel.leftAnchor.constraint(equalTo: container.leftAnchor,constant:15),
            titleLabel.rightAnchor.constraint(equalTo: container.rightAnchor,constant:-10),
            titleLabel.topAnchor.constraint(equalTo: container.topAnchor,constant:10),
            ])
        titleLabel.sizeToFit()
        
        NSLayoutConstraint.activate([
            subLabel.leftAnchor.constraint(equalTo: container.leftAnchor,constant:15),
            subLabel.rightAnchor.constraint(equalTo: container.rightAnchor,constant:-10),
            subLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor)
            ])
        subLabel.sizeToFit()
        
        
    }
}

