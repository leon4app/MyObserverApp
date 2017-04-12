//
//  main.swift
//  MyObserverApp
//
//  Created by LeonTse on 2017/3/29.
//  Copyright © 2017年 LeonTse. All rights reserved.
//

import Foundation


    var flower = Flower()
    var bird1 = Bird.init(name: "1", flower: flower)
    var bird2 = Bird.init(name: "2", flower: flower)
    var bird3 = Bird.init(name: "3", flower: flower)
    
    flower.open()
    flower.close()

