//
//  UIViewViewController.swift
//  DSCategories
//
//  Created by dasheng on 16/6/1.
//  Copyright © 2016年 dasheng. All rights reserved.
//

import Foundation


class SUIViewViewController: BaseViewController {
    
    // MARK: - lifeMethon
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myView: UIView = UIView(frame: CGRect(x: 0, y: 100, width: 100, height: 64))
        myView.backgroundColor = UIColor.redColor()
        myView.setKcenterX(self.view.frame.size.width/2)
        
        view.addSubview(myView)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
}