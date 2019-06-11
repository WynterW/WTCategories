//
//  UIBarButtonItem+Init.h
//  WTCategories
//
//  Created by Wynter on 2019/6/11.
//  Copyright © 2019 Wynter. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIBarButtonItem (Init)

/**
 *  返回带图片的 UIBarButtonItem
 *
 *  @param target       点击 item 后调用哪个对象的方法
 *  @param action       点击 item 后调用 target 的哪个方法
 *  @param image        图片
 *  @param highImage    高亮的图片
 *
 *  @return 创建完的 item
 */
+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage;

/**
 *  返回纯字体的 UIBarButtonItem
 *
 *  @param target       点击 item 后调用哪个对象的方法
 *  @param action       点击 item 后调用 target 的哪个方法
 *  @param title        标题
 *  @param titleColor   标题颜色
 *  @param titleFond    标题字号
 *
 *  @return 创建完的 item
 */
+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action title:(NSString *)title titleColor:(UIColor *)titleColor titleFond:(UIFont *)titleFond;

@end

NS_ASSUME_NONNULL_END
