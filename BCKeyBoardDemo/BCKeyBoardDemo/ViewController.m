//
//  ViewController.m
//  BCKeyBoardDemo
//
//  Created by baochao on 15/7/29.
//  Copyright (c) 2015年 baochao. All rights reserved.
//

#import "ViewController.h"
#import "BCKeyBoard.h"
@interface ViewController () <BCKeyBoardDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *array = @[@"chatBar_colorMore_audioCall",@"chatBar_colorMore_location",@"chatBar_colorMore_photoSelected",@"chatBar_colorMore_video@2x.png",@"chatBar_colorMore_video@2x.png",@"chatBar_colorMore_video@2x.png"];
    BCKeyBoard *bc = [[BCKeyBoard alloc] initWithFrame:CGRectMake(0, [UIScreen mainScreen].bounds.size.height - 46, [UIScreen mainScreen].bounds.size.width,46)];
    bc.delegate = self;
    bc.imageArray = array;
    bc.placeholder = @"我来说几句";
    bc.placeholderColor = [UIColor colorWithRed:133/255 green:133/255 blue:133/255 alpha:0.5];
    bc.backgroundColor = [UIColor clearColor];
    [self.view addSubview:bc];
}
- (void)didSendText:(NSString *)text
{
    NSLog(@"%@",text);
}
- (void)returnHeight:(CGFloat)height
{
    NSLog(@"%f",height);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end