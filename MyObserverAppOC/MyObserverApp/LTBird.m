//
//  Bird.m
//  MyObserverApp
//
//  Created by LeonTse on 2017/3/25.
//  Copyright © 2017年 LeonTse. All rights reserved.
//

#import "LTBird.h"
#import "LTFlower.h"

static NSString * ISOPENKEY = @"isOpen";
@interface LTBird()
{

}
@property (nonatomic, strong) LTFlower* flower;
@property (nonatomic, copy) NSString* name;
@end

@implementation LTBird

- (instancetype)initWithBirdName:(NSString *)name Flower:(LTFlower *)flower
{
    self = [super init];
        if (self)
        {
            NSAssert(name != nil, @"name must not be nil");
            NSAssert(flower != nil, @"flower must not be nil");
            self.name = name;
            self.flower = flower;
            [self.flower addObserver:self forKeyPath:ISOPENKEY options:NSKeyValueObservingOptionNew context:nil];
            
        }
    
    return self;
}

- (void)dealloc
{
    [self.flower removeObserver:self forKeyPath:ISOPENKEY];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
    if ([object isEqual:self.flower])
    {
        if ([keyPath isEqualToString:ISOPENKEY])
        {
            if ([[change objectForKey:NSKeyValueChangeNewKey] boolValue])
            {
                [self eat];
            }
            else
            {
                [self sleep];
            }
        }
    }
    else
    {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

- (void)eat
{
    NSLog(@"HummingBird %@'s breakfast time!", self.name);
}

- (void)sleep
{
    NSLog(@"Hummingbird %@'s sleep time!", self.name);
}
@end
