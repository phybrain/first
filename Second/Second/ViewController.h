//
//  ViewController.h
//  Second
//
//  Created by phybrain on 2017/7/13.
//  Copyright © 2017年 phybrain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{

//定时器 每隔一段时间发送一个消息 通过此消息调用相应的函数



    NSTimer* _timerView;
    
}
//定时器属性对象

@property (retain,nonatomic) NSTimer* timerView;
@end

