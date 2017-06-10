//
//  ViewController.m
//  LianShi
//
//  Created by zhangzhenglong on 2017/6/9.
//  Copyright © 2017年 zhangzhenglong. All rights reserved.
//

#import "ViewController.h"
#import "CalculateManager.h"
#import <objc/runtime.h>

@interface ViewController ()
@property (nonatomic,copy)int(^myBlock)(int);
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)calculate:(id)sender {
    
    CalculateManager *manager = [[CalculateManager alloc] init];
    int result = manager.add(200).add(100).result;
    NSLog(@"%d",result);
    
    int result1 = [CalculateManager zzl_makeCalculates:^(CalculateManager *manager) {
        manager.add(10).add(10).add(10);
    }];
    NSLog(@"result1 = %d",result1);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
