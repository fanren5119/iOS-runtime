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
