//
//  BViewController.h
//  BModule
//
//  Created by 李永杰 on 2019/7/16.
//  Copyright © 2019 muheda. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void(^TextBlock)(NSString *text);
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BViewController : UIViewController

@property (nonatomic, copy) TextBlock   textBlock;

@end

NS_ASSUME_NONNULL_END
