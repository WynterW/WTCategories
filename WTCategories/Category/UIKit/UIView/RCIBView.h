//
//  WTCategories
//
//  Created by Wynter on 2018/9/7.
//  Copyright © 2018年 Wynter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RCIBView : UIView

/**
 圆角半径
 */
@property (nonatomic, assign)IBInspectable CGFloat cornerRadius;

/**
 边框宽度
 */
@property (nonatomic, assign)IBInspectable CGFloat borderWidth;

/**
 边框颜色
 */
@property (nonatomic, assign)IBInspectable UIColor *borderColor;

/**
 阴影颜色
 */
@property (nonatomic, assign)IBInspectable UIColor *shadowColor;

/**
 阴影不透明度 默认为0
 */
@property (nonatomic, assign)IBInspectable CGFloat shadowOpacity;

/**
 阴影半径
 */
@property (nonatomic, assign)IBInspectable CGFloat shadowRadius;

/**
 阴影偏移 配合shadowRadius使用 默认(0, -3)
 */
@property (nonatomic, assign)IBInspectable CGSize shadowOffset;

@end
