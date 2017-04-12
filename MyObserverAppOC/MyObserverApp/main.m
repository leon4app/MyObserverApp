//
//  main.m
//  MyObserverApp
//
//  Created by LeonTse on 2017/3/25.
//  Copyright © 2017年 LeonTse. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LTBird.h"
#import "LTFlower.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        LTFlower *flower = [[LTFlower alloc] init];
        LTBird *bird1 = [[LTBird alloc] initWithBirdName:@"1" Flower:nil];
        LTBird *bird2 = [[LTBird alloc] initWithBirdName:@"2" Flower:flower];
        LTBird *bird3 = [[LTBird alloc] initWithBirdName:@"3" Flower:flower];
        
        [flower open];
        [flower close];
    }
    return 0;
}
