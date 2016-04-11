//
//  People+Parent.m
//  CategoryTest
//
//  Created by 王磊 on 16/3/1.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "People+Parent.h"
#import <objc/runtime.h>

@implementation People (Parent)

+ (void)load
{
    Method a = class_getInstanceMethod(self, @selector(speak));
    Method b = class_getInstanceMethod(self, @selector(teach));
    method_exchangeImplementations(a, b);
}

- (void)teach
{
    NSLog(@"======teach");
    [self teach];
}

@end
