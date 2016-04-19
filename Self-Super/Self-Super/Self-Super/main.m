//
//  main.m
//  Self-Super
//
//  Created by 王磊 on 16/4/19.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface People : NSObject

@end

@implementation People

@end


@interface Man : People

@end

@implementation Man

- (id)init
{
    self = [super init];
    if (self) {
        NSLog(@"%@", NSStringFromClass([self class]));
        NSLog(@"%@", NSStringFromClass([super class]));
    }
    return self;
}

@end

int main(int argc, char * argv[]) {
    @autoreleasepool {
        [[Man alloc] init];
        return 0;
    }
}
