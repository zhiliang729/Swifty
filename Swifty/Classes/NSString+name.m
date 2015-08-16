//
//  NSString+name.m
//  Swifty
//
//  Created by RHCT on 15/8/15.
//  Copyright (c) 2015年 ZL. All rights reserved.
//

#import "NSString+name.h"
#import <objc/runtime.h>

@implementation NSString (name)
static void * MyKey = (void *)@"mykey";
- (NSString *)name {
    return objc_getAssociatedObject(self, MyKey);
}

- (void)setName:(NSString *)name{
    objc_setAssociatedObject(self, MyKey, name, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
@end
