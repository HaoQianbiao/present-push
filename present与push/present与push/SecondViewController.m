//
//  SecondViewController.m
//  present与push
//
//  Created by haoqianbiao on 2021/9/13.
//  Copyright © 2021 haoqianbiao. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor yellowColor];
    UIButton* button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 100)];
    [button setTitle:@"跳转" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(press) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UIButton* button_two = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 200, 100)];
    [button_two setTitle:@"返回" forState:UIControlStateNormal];
    [button_two setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button_two addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button_two];
}

- (void)press {
    ThirdViewController* third = [[ThirdViewController alloc] init];

    [self.navigationController pushViewController:third animated:YES];
}
- (void)back {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
