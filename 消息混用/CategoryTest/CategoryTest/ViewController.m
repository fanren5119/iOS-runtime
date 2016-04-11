//
//  ViewController.m
//  CategoryTest
//
//  Created by 王磊 on 16/3/1.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "People+Parent.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    People *p = [[People alloc] init];
    [p speak];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
