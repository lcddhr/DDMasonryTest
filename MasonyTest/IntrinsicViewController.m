//
//  IntrinsicViewController.m
//  MasonyTest
//
//  Created by lovelydd on 15/12/14.
//  Copyright © 2015年 xiaomutou. All rights reserved.
//

#import "IntrinsicViewController.h"
#import "Masonry.h"

@interface IntrinsicViewController () {
    
    UIView *redView;
    UIView *greenView;
    
    UILabel *blueLabel;
}

@end

@implementation IntrinsicViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    /*
     * 如果是UILabel的话，左右两端的Label加上以上约束
     *
     *  [label setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
     *
     *
     *  [label setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
     *
     *
     */
    
    
    redView = ({
        UIView *view = [UIView new];
        view.backgroundColor = [UIColor redColor];
        [self.view addSubview:view];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.left.equalTo(self.view);
            make.centerY.equalTo(self.view);
            make.height.equalTo(@50);
            make.width.equalTo(@50);
            
            make.right.priorityLow();
        }];
        view;
    });
    
    blueLabel = ({
        UILabel *label = [UILabel new];
        label.backgroundColor = [UIColor blueColor];
        [self.view addSubview:label];
        label.textAlignment = NSTextAlignmentCenter;
        label.text = @"中间的label";
        
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.left.equalTo(redView.mas_right).offset(10);
            make.centerY.equalTo(self.view);
        }];
        
        label;
    });
    
    greenView = ({
        UIView *view = [UIView new];
        view.backgroundColor = [UIColor greenColor];
        [self.view addSubview:view];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.left.equalTo(blueLabel.mas_right).offset(10);
            make.right.equalTo(self.view);
            make.centerY.equalTo(self.view);
            make.height.equalTo(@50);
            make.size.equalTo(@50);
            make.left.priorityLow();
        }];
        
        view;
    });
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    blueLabel.text = [blueLabel.text stringByAppendingString:@"123"];
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
