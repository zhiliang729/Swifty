//
//  TypeAlias.swift
//  Swifty
//
//  Created by RHCT on 15/8/20.
//  Copyright (c) 2015年 ZL. All rights reserved.
//

import Foundation

class Person<T> {

}

typealias WorkId = String
typealias Worker = Person<WorkId>

protocol GeneratorTypeA {
    typealias Element
    mutating func next() -> Element
}

protocol SequenceTypeA: GeneratorTypeA {
    typealias Generator: GeneratorTypeA
    func generate() -> Generator
}

extension Person: GeneratorTypeA {
    typealias Element = String
    func next() -> Element {
        return "hel"
    }
}

