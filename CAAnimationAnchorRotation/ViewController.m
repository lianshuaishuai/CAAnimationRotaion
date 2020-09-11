//
//  ViewController.m
//  CAAnimationAnchorRotation
//
//  Created by 连帅帅 on 2020/9/11.
//  Copyright © 2020 连帅帅. All rights reserved.
//

#import "ViewController.h"
#import "CAAnimationRotation.h"
#import <objc/runtime.h>
static char shape_layer;
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CAShapeLayer *shapeLayer = [[CAShapeLayer alloc] init];
    CGRect shapeRect = CGRectMake(200, 100, 100, 100);
    shapeLayer.anchorPoint = CGPointMake(0, 0);//改变锚点 范围是（0-1）
    shapeLayer.backgroundColor = [UIColor redColor].CGColor;
    shapeLayer.frame = shapeRect;
    [self.view.layer addSublayer:shapeLayer];
    
    UIButton *rotaionBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [self.view addSubview:rotaionBtn];
     objc_setAssociatedObject(rotaionBtn, &shape_layer, shapeLayer, OBJC_ASSOCIATION_RETAIN);
    rotaionBtn.frame = CGRectMake(200, 300, 100, 30);
    rotaionBtn.backgroundColor = [UIColor blueColor];
    rotaionBtn.layer.cornerRadius = 5;
    [rotaionBtn setTitle:@"给我掉落" forState:(UIControlStateNormal)];
    [rotaionBtn setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [rotaionBtn addTarget:self action:@selector(fall:) forControlEvents:(UIControlEventTouchUpInside)];
    
}

-(void)fall:(UIButton *)sender{
    CAShapeLayer *shapeLayer = objc_getAssociatedObject(sender, &shape_layer);
    [CAAnimationRotation animationRoation:shapeLayer];
}


@end
