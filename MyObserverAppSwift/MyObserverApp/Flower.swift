//
//  Flower.swift
//  MyObserverApp
//
//  Created by LeonTse on 2017/3/29.
//  Copyright © 2017年 LeonTse. All rights reserved.
//

import Foundation

class Flower: NSObject
{
    dynamic var isOpen = false;
    
    func open()
    {
        print("Flower Open")
        isOpen = true;
    }
    func close()
    {
        print("Flower Close")
    isOpen = false;
    }
}
