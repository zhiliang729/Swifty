//
//  Metting.swift
//  Swifty
//
//  Created by RHCT on 15/8/19.
//  Copyright (c) 2015年 ZL. All rights reserved.
//

import Foundation

struct Metting {
    var date: NSDate
    var place: String
    var attendeeName: String
}

extension Metting: Printable {
    var description: String {
        return "Date:\(self.date)   place:\(self.place)  name:\(self.attendeeName)"
    }
}

extension Metting: DebugPrintable {
    var debugDescription: String {
        return "debug Date:\(self.date)   place:\(self.place)  name:\(self.attendeeName)"
    }
}


