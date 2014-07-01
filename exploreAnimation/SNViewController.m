//
//  SNViewController.m
//  exploreAnimation
//
//  Created by jiangr on 14-7-1.
//  Copyright (c) 2014年 snail. All rights reserved.
//

#import "SNViewController.h"

@interface SNViewController ()

@property (nonatomic,strong) UITableView *tableView;

@end

@implementation SNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320, 568)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
