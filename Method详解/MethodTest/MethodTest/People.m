//
//  People.m
//  MethodTest
//
//  Created by 王磊 on 16/4/11.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "People.h"
#import <objc/runtime.h>

@implementation People

- (void)working
{
    
}

- (void)name:(NSString *)name
{
    
}

- (void)getMethods
{
    unsigned int count = 0;
    Method *methodList = class_copyMethodList(self.class, &count);
    for (unsigned int i = 0; i < count; i ++) {
        Method method = methodList[i];
        SEL methodName = method_getName(method);
        
        NSLog(@"方法名：%@",  NSStringFromSelector(methodName));
        
        unsigned int argumentsCount = method_getNumberOfArguments(method);
        
        char argName[512] = {};
        for (unsigned int j = 0; j < argumentsCount; j ++) {
            method_getArgumentType(method, j, argName, 512);
            NSLog(@"第%u个参数类型为:%s", j, argName);
            memset(argName, '\0', strlen(argName));
        }
        
        char returnType[512] = {};
        method_getReturnType(method, returnType, 512);
        NSLog(@"返回值类型：%s", returnType);
        
        NSLog(@"typeEncoding: %s", method_getTypeEncoding(method));
    }
    free(methodList);
}

@end
