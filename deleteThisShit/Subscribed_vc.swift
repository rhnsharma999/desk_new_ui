//
//  SecondViewController.swift
//  deleteThisShit
//
//  Created by Rohan Lokesh Sharma on 25/08/17.
//  Copyright © 2017 webarch. All rights reserved.
//

import UIKit
class Subscribed_vc: UIViewController {
    
    
    let bgColor = UIColor(red: 28/255, green: 33/255, blue: 41/255, alpha: 1.0)
    var headerLabel:UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false;
        view.font = UIFont.systemFont(ofSize: 30)
        view.textColor = .white;
        view.text = "My Classes"
        return view;
    }()
    
    lazy var headerView:UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 64))
       // view.translatesAutoresizingMaskIntoConstraints = false;
        view.backgroundColor = self.bgColor
        return view;
    }()
    
    lazy var myTableView:UITableView = {
        let view = UITableView()
        view.translatesAutoresizingMaskIntoConstraints = false;
        view.delegate = self;
        view.dataSource = self;
        view.backgroundColor = self.bgColor
        view.separatorStyle = .none
        return view;
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
       // view.backgroundColor = UIColor(red: 28/255, green: 33/255, blue: 41/255, alpha: 1.0)
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white]
        myTableView.register(CustomCell.self, forCellReuseIdentifier: "cell")
       
        setupView()
    }

    
}

extension Subscribed_vc:UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.backgroundColor = bgColor
        return cell!
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let y = scrollView.contentOffset.y
        print(y)
        if(y > 0){
            if(y >= 60){
                navigationItem.title = "My Classes"
            }
            else{
                navigationItem.title = "";
            }
        }
        else{
            navigationItem.title = ""
        }
    }
}
extension Subscribed_vc{
    func setupView(){
        view.addSubview(myTableView)
        
        headerView.addSubview(headerLabel)
        
        NSLayoutConstraint.activate([
            headerLabel.leftAnchor.constraint(equalTo: headerView.leftAnchor,constant:10),
            headerLabel.rightAnchor.constraint(equalTo: headerView.rightAnchor),
            headerLabel.bottomAnchor.constraint(equalTo: headerView.bottomAnchor,constant:-10),
            //   headerLabel.topAnchor.constraint(equalTo: headerView.topAnchor)
            ])
        headerLabel.sizeToFit()
        
        
        myTableView.tableHeaderView = headerView
        
        
        
        NSLayoutConstraint.activate([
            myTableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            myTableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            myTableView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor),
            myTableView.bottomAnchor.constraint(equalTo: bottomLayoutGuide.topAnchor)
            ])
        
    }
}
