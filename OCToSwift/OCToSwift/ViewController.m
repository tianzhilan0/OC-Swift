//
//  ViewController.m
//  OCToSwift
//
//  Created by LC on 2017/7/21.
//  Copyright © 2017年 LC. All rights reserved.
//

#import "ViewController.h"
#import "OCToSwift-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    LCHelper *helper = [[LCHelper alloc] init];
    [helper LCLogWithString:@"我是谁"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
