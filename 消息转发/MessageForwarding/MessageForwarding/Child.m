//
//  Child.m
//  MessageForwarding
//
//  Created by 王磊 on 16/4/11.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "Child.h"
#import "People.h"

@implementation Child

//第一步，不动态添加方法，直接返回NO
+ (BOOL)resolveInstanceMethod:(SEL)sel
{
    if ([NSStringFromSelector(sel) isEqualToString:@"speak"]) {
        return NO;
    }
    return [super resolveInstanceMethod:sel];
}

//第二步，备选提供响应aSelector的对象，如果返回nil，则进入第三步
- (id)forwardingTargetForSelector:(SEL)aSelector
{
    if ([NSStringFromSelector(aSelector) isEqualToString:@"speak"]) {
        return nil;
    }
    return [super forwardingTargetForSelector:aSelector];
}

//第三步，获得一个方法签名，如果返回nil，表示无法处理消息，
- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector
{
    if ([NSStringFromSelector(aSelector) isEqualToString:@"speak"]) {
        return [NSMethodSignature signatureWithObjCTypes:"v@:"];
    }
    return [super methodSignatureForSelector:aSelector];
}

//第四步，获得了方法签名之后，都会进入此方法，这一步调用方法，改变调用对象等
- (void)forwardInvocation:(NSInvocation *)anInvocation
{
    [anInvocation invokeWithTarget:[[People alloc]init]];
}

@end
