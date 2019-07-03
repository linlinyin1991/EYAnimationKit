//
//  EYCirclePercentView.h
//  EYAnimationKit_Example
//
//  Created by YinLinLin on 2019/7/3.
//  Copyright © 2019 yinll. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


@interface EYCirclePercentView : UIView

@property (nonatomic, strong) NSArray *dataArray;

/// 半径，默认为80
@property (nonatomic, assign) CGFloat radius;

/// 圆弧宽度，默认为15
@property (nonatomic, assign) CGFloat lineWidth;

- (instancetype)initWithFrame:(CGRect)frame dataArray:(NSArray *)dataArray;

/// 显示UI
- (void)show;

@end

NS_ASSUME_NONNULL_END
