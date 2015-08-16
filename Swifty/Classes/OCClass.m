//
//  OCClass.m
//  Swifty
//
//  Created by RHCT on 15/8/15.
//  Copyright (c) 2015年 ZL. All rights reserved.
//

#import "OCClass.h"
#import "Swifty-Swift.h"

@implementation OCClass

+ (void)hello
{
    SwiftClass *demo = [[SwiftClass alloc] init];
    demo.pro = @"hello";
    NSLog(@"pro:%@", demo.pro);
}

- (instancetype)init
{
    if (self = [super init]) {
        self.name = @"zl";
    }
    return self;
}

- (void)hello
{
    NSLog(@"%@", self.name);
}

@end
