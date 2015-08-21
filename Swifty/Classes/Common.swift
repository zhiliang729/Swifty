//
//  Common.swift
//  Swifty
//
//  Created by RHCT on 15/8/19.
//  Copyright (c) 2015年 ZL. All rights reserved.
//

import Foundation
import XCGLogger

let logger: XCGLogger = XCGLogger.defaultInstance()

func local(closure: () -> ()) {
    closure()
}


