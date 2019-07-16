//
//  ViewController.m
//  CTMediator_demo
//
//  Created by 李永杰 on 2019/7/16.
//  Copyright © 2019 muheda. All rights reserved.
//

#import "ViewController.h"
#import "CTMediator+BViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"点击了" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setFrame:CGRectMake(100, 100, 100, 30)];
    [btn addTarget:self action:@selector(clickAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn1 setTitle:@"黄背景颜色" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn1 setFrame:CGRectMake(100, 200, 100, 30)];
    [btn1 addTarget:self action:@selector(clickAction1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];

    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn2 setTitle:@"无参数" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn2 setFrame:CGRectMake(100, 300, 100, 30)];
    [btn2 addTarget:self action:@selector(clickAction2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];

    // Do any additional setup after loading the view.
}

-(void)clickAction {
    UIViewController *bVC = [[CTMediator sharedInstance] bViewControllerBackgroundColor:[UIColor greenColor] textBlock:^(NSString *text) {
        NSLog(@"%@",text);
    }];
    [self.navigationController pushViewController:bVC animated:YES];
}
-(void)clickAction1 {
    
    UIViewController *bVC = [[CTMediator sharedInstance] bViewControllerYellowColor];
    [self.navigationController pushViewController:bVC animated:YES];
}
-(void)clickAction2 {
    UIViewController *bVC = [[CTMediator sharedInstance] bViewControllerNoPara];
    [self.navigationController pushViewController:bVC animated:YES];
}
@end
