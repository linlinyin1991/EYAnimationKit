//
//  UIView+EYMask.m
//  EYAnimationKit
//
//  Created by YinLinLin on 2018/10/8.
//

#import "UIView+EYMask.h"
#import <objc/runtime.h>
@implementation UIView (EYMask)

- (CGFloat)ey_cornerRadius {
    NSNumber *radiusValue = objc_getAssociatedObject(self, @selector(ey_cornerRadius));
    return radiusValue.floatValue;
}


- (void)setEy_cornerRadius:(CGFloat)ey_cornerRadius {
    objc_setAssociatedObject(self, @selector(ey_cornerRadius), [NSNumber numberWithFloat:ey_cornerRadius], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

/// 设置圆形
- (void)setCircleMask {
    CGFloat width = self.bounds.size.width;
    CGFloat height = self.bounds.size.height;
    
    CAShapeLayer *circleMask = [CAShapeLayer layer];
    
    /// 直径
    CGFloat diameter = MIN(width, height);
    CGPoint centerPoint = CGPointMake((fabs(width - diameter) + diameter)/2.f , (fabs(height - diameter) + diameter)/2.f);
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:centerPoint radius:diameter/2.f startAngle:0 endAngle:2 * M_PI clockwise:YES];
    circleMask.path = path.CGPath;
    self.layer.mask = circleMask;
}

/// 设置五角形
- (void)setFivePoint1Mask {
    
}

- (void)setFivePoint2Mask {
    
}

@end
