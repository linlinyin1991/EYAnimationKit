//
//  EYCirclePercentView.m
//  EYAnimationKit_Example
//
//  Created by YinLinLin on 2019/7/3.
//  Copyright © 2019 yinll. All rights reserved.
//

#import "EYCirclePercentView.h"

@interface EYCirclePercentView ()


@property (nonatomic, strong) CAShapeLayer *shapeLayer;

@end

@implementation EYCirclePercentView

- (instancetype)initWithFrame:(CGRect)frame dataArray:(NSArray *)dataArray {
    if (self = [super initWithFrame:frame]) {
        self.radius = 80;
        self.lineWidth = 15.f;
        self.dataArray = dataArray;
    }
    return self;
}


- (void)show {
    //创建出CAShapeLayer
    self.shapeLayer = [CAShapeLayer layer];
    self.shapeLayer.frame = self.bounds;
    //添加并显示
    [self.layer addSublayer:self.shapeLayer];
    
    //    CGFloat startAngle = (-M_PI_2);
    CGFloat startAngle = 0;
    CGFloat endAngle = 0;
    for (NSDictionary *percentDict in self.dataArray) {
        CGFloat present = [[percentDict objectForKey:@"percent"] floatValue]/100;
        endAngle = startAngle + present * 2 * M_PI;
        [self makeArcView:percentDict startAngle:startAngle endAngle:endAngle];
        startAngle = endAngle;
    }
}

- (void)makeArcView:(NSDictionary *)percentDict startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle {
    CGPoint centerPoint = CGPointMake(self.bounds.size.width/2.0, self.bounds.size.height/2.0);
    UIBezierPath *presentPath = [UIBezierPath bezierPathWithArcCenter:centerPoint radius:self.radius startAngle:startAngle endAngle:endAngle clockwise:YES];
    CAShapeLayer *presentLayer = [CAShapeLayer layer];
    presentLayer.path = presentPath.CGPath;
    presentLayer.lineWidth = self.lineWidth;
    UIColor *color = [percentDict objectForKey:@"color"];
    presentLayer.strokeColor = color.CGColor;
    presentLayer.fillColor = nil;
    [self.shapeLayer addSublayer:presentLayer];
    // 计算圆弧中心角度
    CGFloat centerAngle = startAngle + (endAngle - startAngle)/2.f;
    // 计算圆弧中心点位置
    CGFloat startPointX = centerPoint.x + (self.radius+self.lineWidth/2.0)*cos(centerAngle);
    CGFloat startPointY = centerPoint.y + (self.radius+self.lineWidth/2.0)*sin(centerAngle);
    /// 计算转折点位置
    CGFloat secondPointX = centerPoint.x + (self.radius+self.lineWidth)*cos(centerAngle);
    CGFloat secondPointY = centerPoint.y + (self.radius+self.lineWidth)*sin(centerAngle);
    
    /// 计算终点位置
    CGFloat endPointX = centerPoint.x + (self.radius+self.lineWidth/2.0) + 40;
    CGFloat endPointY = secondPointY;
    
    if (secondPointX < startPointX) {
        endPointX = centerPoint.x - (self.radius+self.lineWidth/2.0) - 40;
    }
    
    // 计算文字显示区域
    
    UIBezierPath *linePath = [UIBezierPath bezierPath];
    [linePath moveToPoint:CGPointMake(startPointX, startPointY)];
    [linePath addLineToPoint:CGPointMake(secondPointX, secondPointY)];
    [linePath addLineToPoint:CGPointMake(endPointX, endPointY)];
    CAShapeLayer *lineLayer = [CAShapeLayer layer];
    lineLayer.path = linePath.CGPath;
    lineLayer.lineWidth = 1;
    lineLayer.strokeColor = color.CGColor;
    lineLayer.fillColor = nil;
    [self.layer addSublayer:lineLayer];
}

@end
