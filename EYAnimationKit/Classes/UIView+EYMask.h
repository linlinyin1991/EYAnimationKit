//
//  UIView+EYMask.h
//  EYAnimationKit
//
//  Created by YinLinLin on 2018/10/8.
//

#import <UIKit/UIKit.h>


@interface UIView (EYMask)

/// 设置圆角
@property (nonatomic, assign) CGFloat ey_cornerRadius;


/// 设置圆形
- (void)setCircleMask;

/// 设置五角形
- (void)setFivePointMask;

//- (void)setFivePoint2Mask;


@end
