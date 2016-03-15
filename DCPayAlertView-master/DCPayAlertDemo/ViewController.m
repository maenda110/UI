//
//  ViewController.m
//  DCPayAlertDemo
//
//  Created by dawnnnnn on 15/12/9.
//  Copyright © 2015年 dawnnnnn. All rights reserved.
//

#import "ViewController.h"
#import "DCPaymentView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}

- (IBAction)test{
    DCPaymentView *payAlert = [[DCPaymentView alloc]init];
    payAlert.title = @"请输入支付密码";
    payAlert.detail = @"微信红包";
    payAlert.amount= 1000;
    
    [payAlert show];
    payAlert.completeHandle = ^(NSString *inputPwd) {
    NSLog(@"密码是%@",inputPwd);



        

        
        
        
        
    UIAlertView *alertView =  [[UIAlertView alloc]initWithTitle:@"提示" message:@"支付成功！" delegate:nil cancelButtonTitle:@"确定"otherButtonTitles:nil, nil];
        [alertView show];
        
        
    };
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
