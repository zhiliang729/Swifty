//
//  ViewController.swift
//  Swifty
//
//  Created by RHCT on 15/8/15.
//  Copyright (c) 2015年 ZL. All rights reserved.
//

import UIKit

class A {
    var number: Int {
        get {
            logger.debug("get")
            return 1
        }
        
        set {
            logger.debug("set")
        }
    }
}

class B: A {
    override var number: Int {
        willSet {
            logger.debug("willSet")
        }
        
        didSet {
            logger.debug("didSet")
        }
    }
}

class Pet {
    
}

class Cat: Pet {
    
}

class Dog: Pet {
    
}

func printPet(pet: Pet) {
    logger.debug("Pet")
}

func printPet(cat: Cat) {
    logger.debug("cat")
}

func printPet(dog: Dog) {
    logger.debug("Bark")
}

func printThem(pet: Pet, cat: Cat) {
//    printPet(pet)
//    printPet(cat)
    if let aCat = pet as? Cat {
        printPet(aCat)
    } else if let aDog = pet as? Dog {
        printPet(aDog)
    }
    printPet(cat)
}

protocol Copyable {
    func copy() -> Self
    func plus(obj: Self) -> Self
}

class MyClass: Copyable {
    var num = 1
    
    func copy() -> Self {
        let result = self.dynamicType()
        result.num = num
        return result
    }
    
    func plus(obj: MyClass) -> Self {
        let result = self.dynamicType()
        result.num = self.num + obj.num
        return result
    }
    
    required init() {
        
    }
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var todo1 = TodoItem(uuid: "1", title: "hello")
        var todo2 = TodoItem(uuid: "1", title: "baby")
        if todo1 == todo2 {
            logger.debug(closure: { () -> String? in
                return "hellp"
            })
        }
        
        let metting = Metting(date: NSDate(timeIntervalSinceNow: 86400), place: "aaa", attendeeName: "dw")
        logger.debug { () -> String? in
            return metting.description
        }
        
        
        let view = UIView(frame: CGRectMake(0, 0, 320, 480))
        
        local {
            let titleLabel = UILabel(frame: CGRectMake(150, 30, 80, 40))
            titleLabel.textColor = UIColor.redColor()
            titleLabel.text = "title"
            view.addSubview(titleLabel)
        }
        
        local {
            let textLabel = UILabel(frame: CGRectMake(150, 80, 80, 40))
            textLabel.textColor = UIColor.redColor()
            textLabel.text = "Text"
            view.addSubview(textLabel)
        }
        
        let label:UILabel = {
            let textLabel = UILabel(frame: CGRectMake(150, 130, 80, 40))
            textLabel.textColor = UIColor.redColor()
            textLabel.text = "hello"
            view.addSubview(textLabel)
            return textLabel
        }()

        self.view.addSubview(view)
        
        let b = B()
        b.number = 10
        
        printPet(Cat())
        printPet(Dog())
        printPet(Pet())
        printThem(Dog(), Cat())
        
        let str = "wewe"
        str.isEmpty
        
        let date = NSDate()
        let name = date.dynamicType
        logger.debug { () -> String? in
            let string = "\(name)"
            return string
        }
        
        let object = MyClass()
        object.num = 23
        
        let newObject = object.copy()
        object.num = 1
        
        let plus = object.plus(newObject)
        
        logger.debug("\(object.num)")
        logger.debug("\(newObject.num)")
        logger.debug("\(plus.num)")
        
        let typeMyClass: MyClass.Type  = MyClass.self
        object.self
        
        let obj = typeMyClass()
        obj.num = 10
        logger.debug("\(obj.num)")
        
        var test = "helLo"
        let interval = "a" ... "z"
        for c in test {
            if !interval.contains(String(c)) {
                logger.debug("\(c) is Upper")
            }
        }
        
        test = "∂∑d®ƒ®∑"
        let range = "\0" ... "~"
        for c in test {
            if !range.contains(String(c)) {
                logger.debug("\(c) is not ascii")
            }
        }
        
        let worker = Worker()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

