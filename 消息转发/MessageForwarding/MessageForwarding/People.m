//
//  People.m
//  MessageForwarding
//
//  Created by 王磊 on 16/4/11.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "People.h"
#import <objc/runtime.h>

@implementation People

+ (BOOL)resolveInstanceMethod:(SEL)sel
{
    if ([NSStringFromSelector(sel) isEqualToString:@"speak"]) {
        //动态添加方法
        class_addMethod(self, sel, (IMP)speak, "v%@:");
        return YES;
    }
    return [super resolveInstanceMethod:sel];
}

void speak(id self, SEL cmd) {
    NSLog(@"%@ is speaking", self);
}

@end
