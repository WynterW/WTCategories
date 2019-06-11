//
//  WTCategories
//
//  Created by Wynter on 2018/9/7.
//  Copyright © 2018年 Wynter. All rights reserved.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface UIView (Ex)

/**
 设置view的阴影
 
 @param color  Shadow Color
 @param offset Shadow offset
 @param radius Shadow radius
 */
- (void)setLayerShadow:(nullable UIColor*)color offset:(CGSize)offset radius:(CGFloat)radius;

/**
 摇动效果
 */
- (void)shake;

/**
 返回view截屏image
 */
- (UIImage *)viewToImage;

/**
 从 XIB 中加载视图
 */
+ (instancetype)loadViewFromXib;

/**
 获取当前视图所在的控制器
 */
- (UIViewController *)getViewController;

/**
  给视图添加 UITapGestureRecognizer 手势

 @param target 调用哪个对象
 @param action 调用target的方法
 */
- (void)addTapGestureWithTarget:(id)target action:(SEL)action;

@end

NS_ASSUME_NONNULL_END
