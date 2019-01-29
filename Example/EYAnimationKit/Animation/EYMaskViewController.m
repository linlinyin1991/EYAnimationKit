//
//  EYMaskViewController.m
//  EYAnimationKit_Example
//
//  Created by YinLinLin on 2018/9/29.
//  Copyright © 2018 yinll. All rights reserved.
//

#import "EYMaskViewController.h"
#import <EYAnimationKit/UIView+EYMask.h>

@interface EYMaskViewController ()

@end

@implementation EYMaskViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"EYMaskDemo";
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:scrollView];
    
    CGFloat beginY = 80.f;
    // 圆形
    UIImageView *imageView1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, beginY, 200, 200)];
    imageView1.image = [UIImage imageNamed:@"IMG_0043.JPG"];
    [imageView1 setCircleMask];
    [scrollView addSubview:imageView1];
    beginY += 200;
    // 五角
    
    UIImageView *imageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(0, beginY, 200, 200)];
    imageView2.image = [UIImage imageNamed:@"IMG_0043.JPG"];
    [imageView2 setFivePointMask];
    [scrollView addSubview:imageView2];
    beginY += 200;
    // 心形
    
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
