//
//  ViewController.m
//  Three
//
//  Created by phybrain on 2017/7/13.
//  Copyright © 2017年 phybrain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize timerView=_timerView;
@synthesize mySwitch=_mySwitch;
@synthesize progress=_progress;
@synthesize slider=_slider;
@synthesize stepper=_stepper;
@synthesize segControl=_segControl;
@synthesize textfield=_textfield;
-(void) pressStart{
   
    //创建定时器 启动定时器
    //scheduledTimerWithTimerInterval 每隔多少时间调用定时器 以秒为单位
    //target 实现定时函数的对象 selector 函数对象 userinfo 传参数 repeats 是否重复
    //返回值为一个新建的定时器对象
    _timerView=[NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateTimer:) userInfo:nil repeats:YES];




}
-(void) pressStop
{



    if (_timerView!=nil)
    {
    
    
        [_timerView invalidate];
    
    
    
    }



}

-(void) updateTimer:(NSTimer*) timer
{


    NSLog(@"666");
    UIView* uiview=[self.view viewWithTag:101];
    uiview.frame=CGRectMake(uiview.frame.origin.x+1, uiview.frame.origin.y+1,100,100);

}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton* uibtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    uibtn.frame=CGRectMake(100, 100, 50, 50);
    [uibtn setTitle:@"start" forState:UIControlStateNormal];
    //[uibtn setTitle:@"qqq" forState:UIControlEventTouchUpInside];
    [uibtn addTarget:self action:@selector(pressStart) forControlEvents:UIControlEventTouchUpInside];
    UIButton* stop=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    stop.frame=CGRectMake(100, 200, 50, 50);
    [stop setTitle:@"stop" forState:UIControlStateNormal];
    [stop addTarget:self action:@selector(pressStop) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:uibtn];
    [self.view addSubview:stop];
    
    UIView* uiview=[[UIView alloc] init];
    uiview.frame=CGRectMake(0, 0, 100, 100);
    uiview.backgroundColor=[UIColor blueColor];
    [self.view addSubview:uiview];
    uiview.tag=101;
    
    _mySwitch=[[UISwitch alloc] init];
    _mySwitch.frame=CGRectMake(200, 200, 10, 10);
    //开启状态
    _mySwitch.on=YES;
    //animated 开启动画
    [_mySwitch setOn:YES animated:YES];
    //设置颜色 [_mySwitch setOnTintColor:[UIColor redColor]];
    [_mySwitch addTarget:self action:@selector(change:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_mySwitch];
    
    _progress=[[UIProgressView alloc] init];
    _progress.frame=CGRectMake(200, 300, 100, 100);
    _progress.progress=0.5;
    _progress.progressViewStyle=UIProgressViewStyleDefault;
    [self.view addSubview:_progress];
    
    _slider=[[UISlider alloc] init];
    _slider.frame=CGRectMake(200, 350, 100, 100);
    _slider.maximumValue=100;
    _slider.minimumValue=0;
    _slider.value=30;
    _slider.minimumTrackTintColor=[UIColor blueColor];
    _slider.maximumTrackTintColor=[UIColor redColor];
    _slider.thumbTintColor=[UIColor blackColor];
    [_slider addTarget:self action:@selector(pressSlider) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_slider];
    
    
    _stepper=[[UIStepper alloc] init];
    _stepper.frame=CGRectMake(200, 350, 100, 100);
    _stepper.minimumValue=0;
    _stepper.maximumValue=100;
    _stepper.value=10;
    //设置步进值，每次向前或向后步伐值
    _stepper.stepValue=1;
    //是否可以重复事件
    _stepper.autorepeat=YES;
//    是否可以讲步进结果通过时间函数相应出来
    _stepper.continuous=YES;
    [self.view addSubview:_stepper];
    [_stepper addTarget:self action:@selector(stepChange) forControlEvents:UIControlEventValueChanged];
    _segControl=[[UISegmentedControl alloc] init];
    _segControl.frame=CGRectMake(200, 400, 100, 100);
    [_segControl insertSegmentWithTitle:@"1" atIndex:0 animated:YES];
    [_segControl insertSegmentWithTitle:@"2" atIndex:1
        animated:YES];
    [_segControl insertSegmentWithTitle:@"3" atIndex:2 animated:YES];
    _segControl.selectedSegmentIndex=0;
    [self.view addSubview:_segControl];
    [_segControl addTarget:self action:@selector(segChange) forControlEvents:UIControlEventValueChanged];
    _textfield=[[UITextField alloc] init];
    _textfield.frame=CGRectMake(200, 450, 100, 100);
    _textfield.placeholder=@"please";
    _textfield.borderStyle=UITextBorderStyleRoundedRect;
    _textfield.secureTextEntry=YES;
    //[_textfield addTarget:self action:@selector(touchesBegan:withEvent:) forControlEvents:UIControlEventTouchDown];
    
    
    
    [self.view addSubview:_textfield];
    
}
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{

    [self.textfield resignFirstResponder];


}
-(void) segChange
{

    NSLog(@"%ld",_segControl.selectedSegmentIndex);



}

-(void)stepChange
{
    NSLog(@"step press");



}
-(void) pressSlider

{
    NSLog(@"value=%f",_slider.value);

}



-(void) change: (UISwitch*) Switch
{
    if (Switch.on==YES){
        NSLog(@"777");}
    else{
    
        NSLog(@"666");
    
    }





}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
