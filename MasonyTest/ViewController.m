//
//  ViewController.m
//  MasonyTest
//
//  Created by lovelydd on 15/6/8.
//  Copyright (c) 2015年 xiaomutou. All rights reserved.
//

#import "ViewController.h"
#import "CenterViewController.h"
#import "EdgeViewController.h"
#import "EqualSpacingViewController.h"
#import "ScrollViewController.h"
#import "IntrinsicViewController.h"

@interface ViewController () <UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) UITableView *tableView;

@property (nonatomic, strong) NSArray *titles;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Masony练习例子";
    
    [self.view addSubview:self.tableView];
}


#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.titles.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellIdentity" forIndexPath:indexPath];
    if (self.titles.count > 0) {
        
        cell.textLabel.text = self.titles[indexPath.row];
    }
    
    return cell;
}
#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    switch (indexPath.row) {
        case 0:
        {
            CenterViewController *centerVC = [[CenterViewController alloc] init];
            [self.navigationController pushViewController:centerVC animated:YES];
        }
            break;
            
            case 1:
        {
            EdgeViewController *edgeVC = [[EdgeViewController alloc] init];
            [self.navigationController pushViewController:edgeVC animated:YES];
        }
            break;
            
        case 2:
        {
            EqualSpacingViewController *equalVC = [[EqualSpacingViewController alloc] init];
            [self.navigationController pushViewController:equalVC animated:YES];
        }
            break;
            
        case 3:
        {
            ScrollViewController *sc = [[ScrollViewController alloc] init];
            [self.navigationController pushViewController:sc animated:YES];
        }
            break;
            case 4:
        {
            IntrinsicViewController *ic = [[IntrinsicViewController alloc] init];
            [self.navigationController pushViewController:ic animated:YES];
        }
            
        default:
            break;
    }
}

#pragma mark - getter and setter

-(NSArray *)titles {
    
    if (!_titles) {
        
        _titles = [NSArray array];
        _titles = @[@"居中显示",@"子视图含边距",@"视图等距离摆放",@"计算ScrollView的contentsize",@"左右视图固定,中间视图拉伸"];
    }
    return _titles;
}
-(UITableView *)tableView {
    
    if (!_tableView) {
        
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame)) style:UITableViewStylePlain];
        _tableView.tableHeaderView = [UIView new];
        _tableView.tableFooterView = [UIView new];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cellIdentity"];
    }
    return _tableView;
}

@end
