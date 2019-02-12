//
//  EYAMacro.m
//  EYAnimationKit
//
//  Created by YinLinLin on 2019/1/30.
//

#import "EYAMacro.h"

@implementation EYAMacro


//UIImage* BPAImageNamed(NSString *name) {
//    NSString *imgPath = [NSString stringWithFormat:@"%@.bundle/%@",@"EYAnimationKit",name];
//    UIImage *img = [UIImage imageNamed:imgPath];
//    return img;
//}
+ (UIImage *)BPAImageNamed:(NSString *)imageNamed {
    NSBundle *currentBundle = [NSBundle bundleForClass:[self class]];
//    NSString *imagePath = [NSString stringWithFormat:@"%@.bundle/%@",@"EYAnimationKit",imageNamed];
    NSString *path = [currentBundle pathForResource:imageNamed ofType:@"png" inDirectory:@"EYAnimationKit.bundle"];
    UIImage *image =  [UIImage imageWithContentsOfFile:path];
    return image;
}
@end
