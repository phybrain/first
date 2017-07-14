//
//  ViewController.m
//  Four
//
//  Created by phybrain on 2017/7/14.
//  Copyright © 2017年 phybrain. All rights reserved.
//

#import "ViewController.h"
#import "SuperView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    SuperView* sView=[[SuperView alloc] init];
    sView.frame=CGRectMake(50,50 , 200, 200);
    sView.backgroundColor=[UIColor blueColor];
    UIButton* b1=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    b1.frame=CGRectMake(300, 400, 50, 50);
    [b1 setTitle:@"big" forState:UIControlStateNormal];
    [b1 addTarget:self action:@selector(big) forControlEvents:UIControlEventTouchUpInside];
    UIButton* b2=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    b2.frame=CGRectMake(300, 450, 50, 50);
    [b2 setTitle:@"small" forState:UIControlStateNormal];
    [b2 addTarget:self action:@selector(small) forControlEvents:UIControlEventTouchUpInside];
    
    
    sView.tag=101;
    [self.view addSubview:sView];
    [self.view addSubview:b1];
    [self.view addSubview:b2];
    
    
    
}
-(void)big
{
    SuperView* sView=(SuperView*)[self.view viewWithTag:101];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    sView.frame=CGRectMake(50, 50, 250, 250);
    [UIView commitAnimations];
}

-(void)small
{

    SuperView* sView=(SuperView*)[self.view viewWithTag:101];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    sView.frame=CGRectMake(50, 50, 100, 100);
    [UIView commitAnimations];



}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
