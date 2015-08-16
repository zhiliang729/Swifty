//
//  SwiftClass.swift
//  Swifty
//
//  Created by RHCT on 15/8/15.
//  Copyright (c) 2015年 ZL. All rights reserved.
//

import UIKit
import XCGLogger

class SwiftClass: NSObject {
    
    private (set) var str2 = "names"
    private var str3 = ""
    
    var str4 = "" {
        willSet {
            XCGLogger.defaultInstance().debug { () -> String? in
                return "will Set str4"
            }
        }
        
        didSet {
            XCGLogger.defaultInstance().debug { () -> String? in
                return "did set str4"
            }
        }
    }
    
    private var str5:String?
    var pro:String {
        set {
            self.str5 = newValue
        }
        get {
            return self.str5!
        }
    }
    
}










