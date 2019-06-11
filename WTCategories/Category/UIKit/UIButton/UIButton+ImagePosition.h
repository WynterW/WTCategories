//
//  UIButton+ImagePosition.h
//  WTCategories
//
//  Created by Wynter on 2019/6/11.
//  Copyright © 2019 Wynter. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    /// 图片在左，文字在右
    ImagePositionStyleLeft,
    /// 图片在右，文字在左
    ImagePositionStyleRight,
    /// 图片在上，文字在下
    ImagePositionStyleTop,
    /// 图片在下，文字在上
    ImagePositionStyleBottom,
} ImagePositionStyle;

@interface UIButton (ImagePosition)

/**
 *  设置图片与文字样式
 *
 *  @param imagePositionStyle     图片位置样式
 *  @param spacing                图片与文字之间的间距
 */
- (void)imagePositionStyle:(ImagePositionStyle)imagePositionStyle spacing:(CGFloat)spacing;
/**
 *  设置图片与文字样式（推荐使用）
 *
 *  @param imagePositionStyle     图片位置样式
 *  @param spacing                图片与文字之间的间距
 *  @param imagePositionBlock     在此 Block 中设置按钮的图片、文字以及 contentHorizontalAlignment 属性
 */
- (void)imagePositionStyle:(ImagePositionStyle)imagePositionStyle spacing:(CGFloat)spacing imagePositionBlock:(void (^)(UIButton *button))imagePositionBlock;

@end

NS_ASSUME_NONNULL_END
