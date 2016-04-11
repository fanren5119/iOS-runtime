//
//  NSObject+title.m
//  AssociateObject
//
//  Created by 王磊 on 16/4/11.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "NSObject+title.h"
#import <objc/runtime.h>

@implementation NSObject (title)

- (void)setTitle:(NSString *)title
{
    objc_setAssociatedObject(self, "Keytitle", title, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)title
{
    return objc_getAssociatedObject(self, "Keytitle");
}

@end
