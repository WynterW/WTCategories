//
//  WTCategories
//
//  Created by Wynter on 2018/9/7.
//  Copyright © 2018年 Wynter. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ControlClickBlock)(UIControl *sender);

@interface UIControl (Event)

@property (nonatomic, copy) ControlClickBlock controlClickBlock;
/** UIControl及其子类点击事件block */
- (void)addControlClickBlock:(ControlClickBlock)controlClickBlock
            forControlEvents:(UIControlEvents)controlEvents;
@end
