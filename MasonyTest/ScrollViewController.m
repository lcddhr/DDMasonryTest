//
//  ScrollViewController.m
//  MasonyTest
//
//  Created by lovelydd on 15/6/8.
//  Copyright (c) 2015年 xiaomutou. All rights reserved.
//

#import "ScrollViewController.h"
#import "MasonyUtil.h"

@interface ScrollViewController ()

@end

@implementation ScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"计算contentSize高度";
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    UIView *bgView = [UIView new];
    bgView.backgroundColor = [UIColor redColor];
    [self.view addSubview:bgView];
    [MasonyUtil centerView:bgView size:CGSizeMake(self.view.frame.size.width, 300)];
    
    UIScrollView *sc = [UIScrollView new];
    sc.backgroundColor = [UIColor grayColor];
    [bgView addSubview:sc];
    
    [MasonyUtil view:sc EdgeInset:UIEdgeInsetsMake(10, 10, 10, 10)];
    
    UIView *containView = [UIView new];     //主要是利用了这个视图容器
    [sc addSubview:containView];
    containView.backgroundColor = [UIColor blackColor];
    [containView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.edges.equalTo(sc);
        make.width.equalTo(sc);
    }];
    
//    int count = 6;
//    
//    UIView *lastView = nil;
//    
//    for ( int i = 1 ; i <= count ; ++i )
//    {
//        UIView *subv = [UIView new];
//        [containView addSubview:subv];
//        subv.backgroundColor = [UIColor colorWithHue:( arc4random() % 256 / 256.0 )
//                                          saturation:( arc4random() % 199 / 256.0 ) + 0.5
//                                          brightness:( arc4random() % 200 / 256.0 ) + 0.5
//                                               alpha:1];
//        
//        [subv mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.and.right.equalTo(containView);
//            make.height.mas_equalTo(@(20*i));
//            
//            if ( lastView )
//            {
//                make.top.mas_equalTo(lastView.mas_bottom);
//            }
//            else
//            {
//                make.top.mas_equalTo(containView.mas_top);
//            }
//        }];
//        
//        lastView = subv;
//    }
//    
//    
//    [containView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.bottom.equalTo(lastView.mas_bottom);
//    }];

    UIView *lastView = nil;
    for (int i = 1; i < 10; i++) {
        
        UIView *subview = [UIView new];
        UIColor *color =[UIColor colorWithRed:(arc4random() % 255)/255.0
                                        green:(arc4random() % 180)/255.0
                                         blue:(arc4random() % 150)/255.0
                                        alpha:1];
        subview.backgroundColor = color;
        [containView addSubview:subview];
        
        BOOL isFirstView = (i == 1);
        if (isFirstView) {
            
            [subview mas_makeConstraints:^(MASConstraintMaker *make) {
                
                make.left.and.right.equalTo(containView);
                make.height.mas_equalTo(@(20 * i));
                make.top.mas_equalTo(containView.mas_top);
              
                
            }];
            
        } else {
            
            
            [subview mas_makeConstraints:^(MASConstraintMaker *make) {
               
                make.left.and.right.equalTo(containView);
                make.height.mas_equalTo(@(20*i));
                make.top.mas_equalTo(lastView.mas_bottom);
            }];
            
        }
        
        lastView = subview;
    }
    
    [containView mas_makeConstraints:^(MASConstraintMaker *make) {
    
        make.bottom.mas_equalTo(lastView.mas_bottom);
    }];
    

    
    
    
    
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
