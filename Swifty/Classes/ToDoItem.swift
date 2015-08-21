//
//  ToDoItem.swift
//  Swifty
//
//  Created by RHCT on 15/8/19.
//  Copyright (c) 2015年 ZL. All rights reserved.
//

import Foundation

class TodoItem {
    let uuid: String
    var title: String
    
    init(uuid: String, title: String){
        self.uuid = uuid
        self.title = title
    }
}

extension TodoItem: Equatable {
    
}

func ==(lhs:TodoItem, rhs:TodoItem) -> Bool {
    return lhs.uuid == rhs.uuid
}
