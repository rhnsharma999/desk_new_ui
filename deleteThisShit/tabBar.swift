//
//  TabBarController.swift
//  Desk 2
//
//  Created by Rohan Lokesh Sharma on 25/08/17.
//  Copyright © 2017 webarch. All rights reserved.
//

import UIKit
import BATabBarController
class TabBarController: BATabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}

extension TabBarController{
    func setupUI(){
        let sub_vc = UINavigationController(rootViewController: Subscribed_vc())
        let announcements_vc = UINavigationController(rootViewController: ViewController())
        let settingsVC = ViewController()
        
        
        
        let a = BATabBarItem(image: #imageLiteral(resourceName: "class_white"), selectedImage: #imageLiteral(resourceName: "class_red"))
       
        let b = BATabBarItem(image: #imageLiteral(resourceName: "class_white"), selectedImage: #imageLiteral(resourceName: "class_red"))
        let c = BATabBarItem(image: #imageLiteral(resourceName: "class_white"), selectedImage: #imageLiteral(resourceName: "class_red"))
        self.viewControllers = [sub_vc,announcements_vc,settingsVC]
        self.tabBarItems = [a!,b!,c!]
        
        
    }
}
