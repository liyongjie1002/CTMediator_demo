//
//  CTMediator+BViewController.h
//  CTMediator_demo
//
//  Created by 李永杰 on 2019/7/16.
//  Copyright © 2019 muheda. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void(^TextBlock)(NSString *text);
#import <CTMediator/CTMediator.h>

@interface CTMediator (BViewController)

-(UIViewController *)bViewControllerBackgroundColor:(UIColor *)backgroundColor textBlock:(TextBlock)block;

-(UIViewController *)bViewControllerYellowColor;

-(UIViewController *)bViewControllerNoPara;

@end

