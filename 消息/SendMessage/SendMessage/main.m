//
//  main.m
//  SendMessage
//
//  Created by 王磊 on 16/4/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Sark)

+ (void)fun;

@end

@implementation NSObject(Sark)

- (void)fun
{
    NSLog(@"======");
}

@end

int main(int argc, char * argv[]) {
    @autoreleasepool {
        [NSObject fun];
        [[NSObject new] fun];
    }
    return 0;
}
