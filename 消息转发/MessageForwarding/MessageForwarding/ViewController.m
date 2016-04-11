//
//  ViewController.m
//  MessageForwarding
//
//  Created by 王磊 on 16/4/11.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "People.h"
#import "Child.h"
#import "Parent.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)respondsToAddMethod:(id)sender
{
    People *people = [[People alloc] init];
    [people speak];
}

- (IBAction)respondsToChangeObject:(id)sender
{
    Child *child = [[Child alloc] init];
    [child performSelector:@selector(speak) withObject:nil];

}

- (IBAction)respondsToChangeMethod:(id)sender
{
    Parent *parent = [[Parent alloc] init];
    [parent performSelector:@selector(speak) withObject:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
