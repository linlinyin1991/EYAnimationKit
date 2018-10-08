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
    
    CGFloat beginY = 60.f;
    
    UIView *testView = [[UIView alloc] initWithFrame:CGRectMake(0, beginY, 200, 60)];
    testView.backgroundColor = [UIColor greenColor];
    [testView setCircleMask];
    [self.view addSubview:testView];
    
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
