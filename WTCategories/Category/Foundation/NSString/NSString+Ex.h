//
//  WTCategories
//
//  Created by Wynter on 2018/9/7.
//  Copyright © 2018年 Wynter. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (Ex)

/**
 根据距离数字字符串，返回展示的字符串
 
 @return 要显示文字
 */
- (NSString *)showDistanceStr;

/**
 货币千位分割符 如：￥1000,000
 
 @return 分割后的字符串
 */
- (NSString *)separatedDigitString;

/**
 标示字符串中包含搜索字符，并标识出来
 
 @param searchString 搜索字符
 @param textFont 字体
 @param textColor 文本颜色
 @return attribute字符串
 */
- (NSAttributedString *)attributeSearchString:(NSString *)searchString textFont:(UIFont *)textFont textColor:(UIColor *)textColor;

@end
