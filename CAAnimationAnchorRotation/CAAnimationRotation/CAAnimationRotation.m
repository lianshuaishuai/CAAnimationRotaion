//
//  CAAnimationRotation.m
//  CAAnimationAnchorRotation
//
//  Created by 连帅帅 on 2020/9/11.
//  Copyright © 2020 连帅帅. All rights reserved.
//

#import "CAAnimationRotation.h"

@implementation CAAnimationRotation
+(void)animationRoation:(CAShapeLayer *)shapeLayer{
     
    CAKeyframeAnimation *rotaionAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform.rotation"];
    rotaionAnimation.duration = 3;
   //如果没有达到预期效果修改此处的values
    rotaionAnimation.values = @[
        [NSValue valueWithCGAffineTransform:CGAffineTransformMakeRotation(M_PI_2)],
        [NSValue valueWithCGAffineTransform:CGAffineTransformMakeRotation(-M_PI/3.0)],
        [NSValue valueWithCGAffineTransform:CGAffineTransformMakeRotation(M_PI/4.0)],
        [NSValue valueWithCGAffineTransform:CGAffineTransformMakeRotation(-M_PI/4)],
        [NSValue valueWithCGAffineTransform:CGAffineTransformMakeRotation(M_PI/5.0)]
    ];
    //    hideAnimation.keyTimes = @[@0, @0.25f, @0.5f,@0.8f,@1];
    rotaionAnimation.timingFunctions = @[
        [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
        [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
        [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
        [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
        [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]
    ];
    rotaionAnimation.removedOnCompletion = NO;
    rotaionAnimation.fillMode = kCAFillModeForwards;
    
    [shapeLayer addAnimation:rotaionAnimation forKey:nil];
}
@end
