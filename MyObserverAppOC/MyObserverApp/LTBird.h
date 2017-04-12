//
//  Bird.h
//  MyObserverApp
//
//  Created by LeonTse on 2017/3/25.
//  Copyright © 2017年 LeonTse. All rights reserved.
//

#import <Foundation/Foundation.h>
@class LTFlower;
@interface LTBird : NSObject
- (instancetype)initWithBirdName:(NSString *)name Flower:(LTFlower *)flower;

@end
