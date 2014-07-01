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
@property (nonatomic, strong) CALayer *colorLayer;

@end

@implementation SNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320, 568)];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(100, 400, 120, 60);
    [button setTitle:@"changeColor" forState:UIControlStateNormal];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(changeColor) forControlEvents:UIControlEventTouchUpInside];
    
    //create sublayer
    self.colorLayer = [CALayer layer];
    self.colorLayer.frame = CGRectMake(110.0f, 50.0f, 100.0f, 100.0f); self.colorLayer.backgroundColor = [UIColor blueColor].CGColor;
    [self.view.layer addSublayer:self.colorLayer];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.tableView.frame = self.view.bounds;
}

- (IBAction)changeColor {
    //create a new random color
    CGFloat red = arc4random() / (CGFloat)INT_MAX; CGFloat green = arc4random() / (CGFloat)INT_MAX; CGFloat blue = arc4random() / (CGFloat)INT_MAX; UIColor *color = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    //create a basic animation
    CABasicAnimation *animation = [CABasicAnimation animation]; animation.keyPath = @"backgroundColor";
    animation.toValue = (__bridge id)color.CGColor;
    animation.fromValue = (__bridge id)self.colorLayer.backgroundColor;
    animation.duration = 2.f;
    self.colorLayer.backgroundColor = color.CGColor;
    //apply animation to layer
    [self.colorLayer addAnimation:animation forKey:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
