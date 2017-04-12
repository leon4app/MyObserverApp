//
//  Flower.m
//  MyObserverApp
//
//  Created by LeonTse on 2017/3/25.
//  Copyright © 2017年 LeonTse. All rights reserved.
//

#import "LTFlower.h"

@implementation LTFlower

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.isOpen = false;
    }
    return self;
}
- (void)open
{
    NSLog(@"Flower open");
    self.isOpen = true;
    
}

- (void)close
{
    NSLog(@"Flower close");
    self.isOpen = false;
    
}
@end
