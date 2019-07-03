//
//  CirclePercentController.m
//  EYAnimationKit_Example
//
//  Created by YinLinLin on 2019/7/1.
//  Copyright © 2019 yinll. All rights reserved.
//

#import "CirclePercentController.h"

#import "EYCirclePercentView.h"

@interface CirclePercentController ()

@property (nonatomic, strong) CAShapeLayer *shapeLayer;

@end

@implementation CirclePercentController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self circleBezierPath];
//    [self circleBezierPath2];
    [self layoutUI];
}

- (void)layoutUI {
    NSArray *dataArray = @[
                           @{@"title":@"part1", @"percent":@40, @"color":[UIColor redColor]},
                           @{@"title":@"part1", @"percent":@20, @"color":[UIColor orangeColor]},
                           @{@"title":@"part1", @"percent":@12, @"color":[UIColor yellowColor]},
                           @{@"title":@"part1", @"percent":@8, @"color":[UIColor greenColor]},
                           @{@"title":@"part1", @"percent":@10, @"color":[UIColor cyanColor]},
                           @{@"title":@"part1", @"percent":@7, @"color":[UIColor blueColor]},
                           @{@"title":@"part1", @"percent":@3, @"color":[UIColor purpleColor]},
                           ];
    EYCirclePercentView *circleView = [[EYCirclePercentView alloc] initWithFrame:CGRectMake(20, 100, self.view.bounds.size.width - 40, self.view.bounds.size.width - 40) dataArray:dataArray];
    [self.view addSubview:circleView];
    circleView.radius = 60;
    circleView.lineWidth = 20;
    [circleView show];
}

-(void)circleBezierPath
{
    CGFloat diameter = 100;
    //创建出CAShapeLayer
    self.shapeLayer = [CAShapeLayer layer];
    self.shapeLayer.frame = CGRectMake(20, 100, diameter, diameter);
    CGFloat strokeStart = 0;
    NSArray *colorArr = @[[UIColor redColor],
                          [UIColor orangeColor],
                          [UIColor yellowColor],
                          [UIColor greenColor],
                          [UIColor cyanColor],
                          [UIColor blueColor],
                          [UIColor purpleColor],
                          ];
    for (NSInteger i = 0; i < 4; i ++) {
        /// 百分比
        CGFloat present = (i+1)/10.0;
        UIBezierPath *presentPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, diameter, diameter)];
        CAShapeLayer *presentLayer = [CAShapeLayer layer];
        presentLayer.frame = CGRectMake(0, 0, diameter, diameter);
        presentLayer.path = presentPath.CGPath;
        presentLayer.strokeStart = strokeStart;
        presentLayer.strokeEnd = strokeStart + present;
        presentLayer.lineWidth = 20.0f;
        UIColor *color = [colorArr objectAtIndex:i];
        presentLayer.strokeColor = color.CGColor;
        presentLayer.fillColor = nil;
        [self.shapeLayer addSublayer:presentLayer];
        strokeStart = presentLayer.strokeEnd;
    }
    //添加并显示
    [self.view.layer addSublayer:self.shapeLayer];
}

-(void)circleBezierPath2
{
    CGFloat diameter = 150;
    //创建出CAShapeLayer
    self.shapeLayer = [CAShapeLayer layer];
    self.shapeLayer.frame = CGRectMake(20, 200, diameter, diameter);
    CGFloat startAngle = (-0.5f*M_PI);
    CGFloat endAngle = 0;
    NSArray *colorArr = @[[UIColor redColor],
                          [UIColor orangeColor],
                          [UIColor yellowColor],
                          [UIColor greenColor],
                          [UIColor cyanColor],
                          [UIColor blueColor],
                          [UIColor purpleColor],
                          ];
    for (NSInteger i = 0; i < 4; i ++) {
        /// 百分比
        CGFloat present = (i+1)/10.0;
        endAngle = startAngle + present * 2 * M_PI;
        UIBezierPath *presentPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(diameter, diameter) radius:diameter/2.0 startAngle:startAngle endAngle:endAngle clockwise:YES];
        startAngle = endAngle;
        CAShapeLayer *presentLayer = [CAShapeLayer layer];
        presentLayer.path = presentPath.CGPath;
        presentLayer.lineWidth = 20.0f;
        UIColor *color = [colorArr objectAtIndex:i];
        presentLayer.strokeColor = color.CGColor;
        presentLayer.fillColor = nil;
        [self.shapeLayer addSublayer:presentLayer];
    }
    //添加并显示
    [self.view.layer addSublayer:self.shapeLayer];
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
