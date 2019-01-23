//
//  WTImgOffsetButton.h
//  WTCategories
//
//  Created by Wynter on 2018/12/3.
//  Copyright © 2018 Wynter. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/**
 按钮的样式
 
 - WTButtonCustomStyleNomal:    普通样式
 - WTButtonCustomStylePicTop:   图片在上文字在下
 - WTButtonCustomStylePicLeft:  图片在左文字在右
 - WTButtonCustomStylePicDown:  图片在下文字在上
 - WTButtonCustomStylePicRight: 图片在右文字在左
 */
typedef NS_ENUM(NSUInteger, WTButtonCustomStyle) {
    WTButtonCustomStyleNomal = 0,
    WTButtonCustomStylePicTop,
    WTButtonCustomStylePicLeft,
    WTButtonCustomStylePicDown,
    WTButtonCustomStylePicRight,
};


@interface WTImgOffsetButton : UIButton

/**
 自定义样式(nomal为系统原本的样式)
 */
@property (assign, nonatomic) WTButtonCustomStyle customstyle;

/**
 自定义间距(nomal下无效)
 */
@property (assign, nonatomic) CGFloat customSpace;

@end

NS_ASSUME_NONNULL_END
