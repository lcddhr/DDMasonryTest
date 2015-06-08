//
//  EdgeViewController.m
//  MasonyTest
//
//  Created by lovelydd on 15/6/8.
//  Copyright (c) 2015年 xiaomutou. All rights reserved.
//

#import "EdgeViewController.h"
#import "MasonyUtil.h"
@interface EdgeViewController ()

@end

@implementation EdgeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"EdgeInset";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *redView = [UIView new];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
    UIView *greenView = [UIView new];
    greenView.backgroundColor = [UIColor greenColor];
    [redView addSubview:greenView];
    
    [MasonyUtil centerView:redView size:CGSizeMake(300, 200)];
    [MasonyUtil view:greenView EdgeInset:UIEdgeInsetsMake(10, 10, 10, 10)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
