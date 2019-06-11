//
//  WTCategories
//
//  Created by Wynter on 2018/9/7.
//  Copyright © 2018年 Wynter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extension)

/**
 创建并返回 1x1像素的图片
 
 @param color  color
 */
+ (nullable UIImage *)imageWithColor:(UIColor *_Nullable)color;

/**
 创建并返回指定颜色和大小的图片
 
 @param color  图片颜色.
 @param size   图片大小.
 */
+ (nullable UIImage *)imageWithColor:(UIColor *_Nullable)color size:(CGSize)size;

@end
