//
//  ThirdViewController.m
//  present与push
//
//  Created by haoqianbiao on 2021/9/13.
//  Copyright © 2021 haoqianbiao. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    UIBarButtonItem* button = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(back)];
    self.navigationController.navigationItem.leftBarButtonItem = button;
    
    UIButton* button_two = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 200, 100)];
    [button_two setTitle:@"返回" forState:UIControlStateNormal];
    [button_two setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button_two addTarget:self action:@selector(Back) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button_two];
}

- (void)back {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)Back {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
