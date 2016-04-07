//
//  main.m
//  RuntimeOne
//
//  Created by 王磊 on 16/4/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sark : NSObject

@end

@implementation Sark

@end

int main(int argc, char * argv[]) {
    @autoreleasepool {
        BOOL res1 = [(id)[NSObject class] isKindOfClass:[NSObject class]];
        BOOL res2 = [(id)[NSObject class] isMemberOfClass:[NSObject class]];
        BOOL res3 = [(id)[Sark class] isKindOfClass:[Sark class]];
        BOOL res4 = [(id)[Sark class] isMemberOfClass:[Sark class]];
        
        NSLog(@"%d %d %d %d", res1, res2, res3, res4);
    }
    return 0;
}



/*
    上述答案的解释：
    在Object.mm中，isKindOfClass方法的实现：
    - (BOOL)isKindOf:aClass
    {
        Class cls;
        for (cls = isa; cls; cls = cls->superclass)
            if (cls == (Class)aClass)
                return YES;
        return NO;
    }
    isMemberOfClass方法的实现
    - (BOOL)isMemberOf:aClass
    {
        return isa == (Class)aClass;
    }
    在上面的调用中，都是判断isa指针
 */

