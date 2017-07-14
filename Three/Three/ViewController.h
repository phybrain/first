//
//  ViewController.h
//  Three
//
//  Created by phybrain on 2017/7/13.
//  Copyright © 2017年 phybrain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
//定时器
    NSTimer* _timerView;
//控件开关
    UISwitch* _mySwitch;
//进度条
    UIProgressView* _progress;
//滑动条
    UISlider* _slider;
// 步进器
//按照一定的数字来调整某个数据 — +
    UIStepper* _stepper;
//分栏控制器
    UISegmentedControl* _segControl;
//表单
    UITextField* _textfield;
    
}


@property (retain, nonatomic ) NSTimer* timerView;
@property (retain,nonatomic) UISwitch* mySwitch;
@property (retain,nonatomic) UIProgressView* progress;
@property  (retain,nonatomic) UISlider* slider;
@property (retain ,nonatomic)UIStepper* stepper;
@property (retain ,nonatomic)UISegmentedControl* segControl;
@property (retain,nonatomic) UITextField* textfield;
@end

