//
//  UIControl+Custom.m
//  UIButtonAction
//
//  Created by 王磊 on 16/3/1.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "UIControl+Custom.h"
#import <objc/runtime.h>

static const NSString *UIControl_EventInterval  = @"EventInterval";
static const NSString *UIControl_EventDate      = @"EventDate";

@implementation UIControl (Custom)

- (void)setEventInterval:(NSTimeInterval)eventInterval
{
    objc_setAssociatedObject(self, &UIControl_EventInterval, @(eventInterval), OBJC_ASSOCIATION_ASSIGN);
}

- (NSTimeInterval)eventInterval
{
    return [objc_getAssociatedObject(self, &UIControl_EventInterval) doubleValue];
}

- (void)setAcceptEventDate:(NSTimeInterval)eventDate
{
    objc_setAssociatedObject(self, &UIControl_EventDate, @(eventDate), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSTimeInterval)acceptEventDate
{
    return [objc_getAssociatedObject(self, &UIControl_EventDate) doubleValue];
}


+ (void)load
{
    Method a = class_getInstanceMethod(self, @selector(sendAction:to:forEvent:));
    Method b = class_getInstanceMethod(self, @selector(custom_sendAction:to:forEvent:));
    method_exchangeImplementations(a, b);
}

- (void)custom_sendAction:(SEL)action to:(nullable id)target forEvent:(nullable UIEvent *)event
{
    NSTimeInterval currentDate = [[NSDate date] timeIntervalSince1970];
    NSTimeInterval lastEventDate = [self acceptEventDate];
    if (currentDate - lastEventDate < self.eventInterval) {
        return;
    }
    if (self.eventInterval > 0) {
        [self setAcceptEventDate:currentDate];
    }
    [self custom_sendAction:action to:target forEvent:event];
}

@end
