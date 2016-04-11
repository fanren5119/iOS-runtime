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
        
        /*
         在NSObject的Sark类别中，- (void)fun方法加入到了NSObject的方法列表中；而+ (void)fun没有实质参与到工作中
         */
        /*
         解释上述执行成功的原因
         [NSObject fun]执行时，objc_msgSend的过程；
         1.objc_msgSend第一个参数是“(id)objc_getClass("NSObject")”，获得NSObject Class。
         2.类方法在Meta Class的方法列表中寻找，所以并不在NSObject 的Meta Class的方法列表中，
         3.继续网super Class中找，而NSObject Meta Class的super Class是NSObject本身，所以可以找到foo这个方法；
         4.可以正常输出结果；
         */
        /*
         [[NSObject new] fun]执行时，objc_msgSend的执行过程
         1.[NSObject new]生成一个NSObject对象，
         2.在NSObject的方法列表中找到方法fun
         3.正常输出结果
         */
    }
    return 0;
}
