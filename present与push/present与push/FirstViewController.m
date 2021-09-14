//
//  FirstViewController.m
//  present与push
//
//  Created by haoqianbiao on 2021/9/13.
//  Copyright © 2021 haoqianbiao. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "FourthViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton* button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 100)];
    [button setTitle:@"跳转" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(press) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    

    UIButton* button_two = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 200, 100)];
    [button_two setTitle:@"跳转2" forState:UIControlStateNormal];
    [button_two setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button_two addTarget:self action:@selector(Press) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button_two];
    
}

- (void)press {
    SecondViewController* second = [[SecondViewController alloc] init];
    UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController:second];
    [self presentViewController:nav animated:YES completion:nil];
}

- (void)Press {
    FourthViewController* fourth = [[FourthViewController alloc] init];
    [self presentViewController:fourth animated:YES completion:nil];
}


@end
