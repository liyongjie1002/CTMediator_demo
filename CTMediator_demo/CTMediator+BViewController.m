//
//  CTMediator+BViewController.m
//  CTMediator_demo
//
//  Created by 李永杰 on 2019/7/16.
//  Copyright © 2019 muheda. All rights reserved.
//

#import "CTMediator+BViewController.h"

@implementation CTMediator (BViewController)

-(UIViewController *)bViewControllerBackgroundColor:(UIColor *)backgroundColor textBlock:(TextBlock)block {
    
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    [dic setValue:backgroundColor forKey:@"backgroundColor"];
    [dic setValue:block forKey:@"textBlock"];
    return [self performTarget:@"BViewController" action:@"changeBackgroundColor" params:dic shouldCacheTarget:YES];
    
}

-(UIViewController *)bViewControllerYellowColor {
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    [dic setValue:[UIColor yellowColor] forKey:@"backgroundColor"];
    return [self performTarget:@"BViewController" action:@"changeBackgroundColor" params:dic shouldCacheTarget:YES];
}

-(UIViewController *)bViewControllerNoPara {
    return [self performTarget:@"BViewController" action:@"noPara" params:nil shouldCacheTarget:YES];
}
@end
