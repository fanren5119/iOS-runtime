//
//  ViewController.m
//  UIButtonAction
//
//  Created by 王磊 on 16/3/1.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "UIControl+Custom.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 100);
    button.backgroundColor = [UIColor redColor];
    button.eventInterval = 2;
    [button addTarget:self action:@selector(respondsToButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)respondsToButtonClick
{
    NSLog(@"=====");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
