//
//  ViewController.m
//  UILabel
//
//  Created by phybrain on 2017/7/12.
//  Copyright © 2017年 phybrain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


-(void) creatUI {
    
    UILabel* uilabel= [[UILabel alloc] init];
    uilabel.text=@"iosiosiosiosoioiosiosiso";
    uilabel.textColor=[UIColor blueColor];
    uilabel.backgroundColor=[UIColor whiteColor];
    uilabel.frame=CGRectMake(100,100, 100, 50);
    //字体
    uilabel.font = [UIFont systemFontOfSize:15];
    //阴影
    uilabel.shadowOffset=CGSizeMake(20, -20);
    uilabel.shadowColor=[UIColor blackColor];
    //组件文字在组建内部居中
    uilabel.textAlignment=NSTextAlignmentCenter;
    //文字行数 =0则自动计算文字的行数显示
    uilabel.numberOfLines=2;
    [self.view addSubview:uilabel];
    
    UIButton* button=[UIButton buttonWithType: UIButtonTypeRoundedRect];
    button.frame=CGRectMake(150, 150, 20, 20);
    [button setTitle:@"1" forState:UIControlStateNormal];
    [button setTitle:@"2" forState:UIControlStateHighlighted];
    [self.view addSubview:button];
    //button   textsize
    button.titleLabel.font=[UIFont systemFontOfSize:10];
    UIButton* imgbtn=[UIButton buttonWithType:UIButtonTypeCustom];
    imgbtn.frame=CGRectMake(180, 180, 20, 20);
    UIImage* b1=[UIImage imageNamed:@"1.jpg" ];
    UIImage* b2=[UIImage imageNamed:@"2.jpg" ];
    [imgbtn setImage:b1 forState:UIControlStateNormal];
    [imgbtn setImage:b2 forState:UIControlStateHighlighted];
    [self.view addSubview: imgbtn];
    [imgbtn addTarget:self action:@selector(press) forControlEvents:UIControlEventTouchUpInside];
    //同一个函数可以通过btn.tag执行事件
    imgbtn.tag=111;

    UIView* uiview=[[UIView alloc] init];
    
//    uiview.alpha=0.9 透明度
  // uiview.opaque=YES view是否显示
//从父视图删除    [uiview removeFromSuperview];
// 设置最前面的view    [self.view bringSubviewToFront:uiview];
//  设置最后面的view  [self.view sendSubviewToBack:uiview];
   //设置view在selfview的位置 self.view.subviews[i]
      [self.view addSubview:uiview];
    
}
-(void) press{


    NSLog(@"666");



}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self creatUI];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
