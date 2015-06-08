//
//  EqualSpacingViewController.m
//  MasonyTest
//
//  Created by lovelydd on 15/6/8.
//  Copyright (c) 2015年 xiaomutou. All rights reserved.
//

#import "EqualSpacingViewController.h"
#import "MasonyUtil.h"

@interface EqualSpacingViewController ()

@end

@implementation EqualSpacingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.title = @"等间距";
    self.view.backgroundColor = [UIColor whiteColor];
    UIView *bgView = [UIView new];
    bgView.backgroundColor = [UIColor redColor];
    [self.view addSubview:bgView];
    [MasonyUtil centerView:bgView size:CGSizeMake(self.view.frame.size.width, 200)];
    
    UIView *view1 = [UIView new];
    view1.backgroundColor = [UIColor grayColor];
    [bgView addSubview:view1];
    
    UIView *view2 = [UIView new];
    view2.backgroundColor = [UIColor blueColor];
    [bgView addSubview:view2];
    
    UIView *view3 = [UIView new];
    view3.backgroundColor = [UIColor yellowColor];
    [bgView addSubview:view3];
    
    UIView *view4 = [UIView new];
    view4.backgroundColor = [UIColor greenColor];
    [bgView addSubview:view4];
    
    UIView *view5 = [UIView new];
    view5.backgroundColor = [UIColor whiteColor];
    [bgView addSubview:view5];
    
    [MasonyUtil equalSpacingView:@[view1,view2,view3,view4,view5]
                       viewWidth:50
                      viewHeight:50
                  superViewWidth:self.view.frame.size.width];
    
    
    
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
