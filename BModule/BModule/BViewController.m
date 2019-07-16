//
//  BViewController.m
//  BModule
//
//  Created by 李永杰 on 2019/7/16.
//  Copyright © 2019 muheda. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"点击了" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setFrame:CGRectMake(100, 100, 100, 30)];
    [btn addTarget:self action:@selector(clickAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

}
-(void)clickAction {
    if (self.textBlock) {
        self.textBlock(@"王者荣耀敌方野区蓝buff第三个坑");
    }
}

@end
