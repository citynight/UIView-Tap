//
//  UIView+Tap.h
//  ToolBar
//
//  Created by Mekor on 16/7/11.
//  Copyright © 2016年 李小争. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Tap)
- (void)addTapBlock:(void(^)(id obj))tapAction;
@end
