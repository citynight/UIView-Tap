//
//  ViewController.m
//  UIView+Tap
//
//  Created by Mekor on 16/7/11.
//  Copyright © 2016年 李小争. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Tap.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"视图点击";
    
    UIView *redView = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [redView addTapBlock:^(UIView* obj) {
        NSLog(@"redView%@",obj.backgroundColor);
    }];
    [self.view addSubview:redView];
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(50, 250, 100, 100)];
    imageView.image = [UIImage imageNamed:@"icon"];
    [imageView addTapBlock:^(UIImageView* obj) {
        NSLog(@"imageView:\n%@",obj.image);
    }];
    [self.view addSubview:imageView];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(150, 400, 100, 100)];
    label.text = @"这是label,点击这里...";
    [label addTapBlock:^(UILabel* obj) {
        NSLog(@"label:\n%@",obj.text);
    }];
    [self.view addSubview:label];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
