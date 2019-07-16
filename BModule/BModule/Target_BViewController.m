//
//  Target_BViewController.m
//  BModule
//
//  Created by 李永杰 on 2019/7/16.
//  Copyright © 2019 muheda. All rights reserved.
//

#import "Target_BViewController.h"
#import "BViewController.h"

@implementation Target_BViewController

-(UIViewController *)Action_changeBackgroundColor:(NSDictionary *)dictionary {
    BViewController *bVC = [[BViewController alloc]init];
    UIColor *backgroundColor = [dictionary valueForKey:@"backgroundColor"];
    bVC.view.backgroundColor = backgroundColor;
    bVC.textBlock = dictionary[@"textBlock"];
    return bVC;
}

-(UIViewController *)Action_noPara:(NSDictionary *)dictionary {
    BViewController *bVC = [[BViewController alloc]init];
    bVC.view.backgroundColor = [UIColor grayColor];
    return bVC;
}
@end
