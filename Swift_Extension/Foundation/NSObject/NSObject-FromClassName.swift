//
//  NSObject.swift
//  DSCategories
//
//  Created by dasheng on 16/6/1.
//  Copyright © 2016年 dasheng. All rights reserved.
//

import Foundation

extension NSObject{
    
    class func fromClassName(className : String) -> NSObject {
        
        let className = NSBundle.mainBundle().infoDictionary!["CFBundleName"] as! String + "." + className
        let aClass = NSClassFromString(className) as! UIViewController.Type
        return aClass.init()
    }
}