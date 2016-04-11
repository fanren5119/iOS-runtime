//
//  Parent.m
//  MessageForwarding
//
//  Created by 王磊 on 16/4/11.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "Parent.h"

@implementation Parent

+ (BOOL)resolveInstanceMethod:(SEL)sel
{
    if ([NSStringFromSelector(sel) isEqualToString:@"speak"]) {
        return NO;
    }
    return [super resolveInstanceMethod:sel];
}

- (id)forwardingTargetForSelector:(SEL)aSelector
{
    if ([NSStringFromSelector(aSelector) isEqualToString:@"speak"]) {
        return nil;
    }
    return [super forwardingTargetForSelector:aSelector];
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector
{
    if ([NSStringFromSelector(aSelector) isEqualToString:@"speak"]) {
        return [NSMethodSignature signatureWithObjCTypes:"v@:"];
    }
    return [super methodSignatureForSelector:aSelector];
}

- (void)forwardInvocation:(NSInvocation *)anInvocation
{
    [anInvocation setSelector:@selector(working)];
    [anInvocation invokeWithTarget:self];
}

- (void)working
{
    NSLog(@"由方法speak改为working");
}

@end
