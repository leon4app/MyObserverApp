//
//  Bird.swift
//  MyObserverApp
//
//  Created by LeonTse on 2017/3/29.
//  Copyright © 2017年 LeonTse. All rights reserved.
//

import Foundation

class Bird: NSObject {
    fileprivate let ISOPENKEY = "isOpen"
    var name:String!
    var flower:Flower!
    init(name:String!, flower:Flower!)
    {
        super.init()
        self.name = name
        self.flower = flower
        self.flower.addObserver(self, forKeyPath: ISOPENKEY, options: NSKeyValueObservingOptions.new, context: nil)
    }
    
    deinit
    {
        self.flower.removeObserver(self, forKeyPath: ISOPENKEY)
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?)
    {
     
        if change![NSKeyValueChangeKey.newKey] as! Bool == true
        {
            self.eat()
        }
        else
        {
            self.sleep()
        }

    }
    
    
    func eat() {
        print("Hummingbird " + self.name + "'s breakfast time!")
    }
    func sleep()
    {
        print("Hummingbird " + self.name + "'s sleep time!")
    }
}
