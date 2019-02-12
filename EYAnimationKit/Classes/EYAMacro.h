//
//  EYAMacro.h
//  EYAnimationKit
//
//  Created by YinLinLin on 2019/1/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//#define BPAImageNamed(imageName) ([UIImage imageNamed:[NSString stringWithFormat:@"EYAnimationKit.bundle/%@",imageName]])

@interface EYAMacro : NSObject

//UIImage* BPAImageNamed(NSString *name);
+ (UIImage *)BPAImageNamed:(NSString *)imageNamed;

@end

NS_ASSUME_NONNULL_END
