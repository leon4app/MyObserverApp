//
//  Flower.h
//  MyObserverApp
//
//  Created by LeonTse on 2017/3/25.
//  Copyright © 2017年 LeonTse. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LTFlower : NSObject
@property (nonatomic) bool isOpen;

- (void)open;
- (void)close;
@end
