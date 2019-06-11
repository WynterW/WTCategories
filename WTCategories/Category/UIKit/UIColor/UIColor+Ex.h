//
//  WTCategories
//
//  Created by Wynter on 2018/9/7.
//  Copyright © 2018年 Wynter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Ex)

/**
 *  根据十六进制字符串生成 UIColor
 *
 *  @param hexString  十六进制颜色值
 *
 *  @return UIColor
 */
+ (UIColor *)colorWithHexString:(NSString *)hexString;

/**
 *  根据十六进制字符串生成 UIColor
 *
 *  @param hexString  十六进制颜色值
 *  @param alpha  透明度
 *  @return UIColor
 */
+ (UIColor *)colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha;

/**
 随机颜色
 */
+ (UIColor *)colorWithRandom;

@end
