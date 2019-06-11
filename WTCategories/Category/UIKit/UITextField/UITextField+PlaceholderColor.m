//
//  UITextField+PlaceholderColor.m
//  WTCategories
//
//  Created by Wynter on 2019/6/11.
//  Copyright © 2019 Wynter. All rights reserved.
//

#import "UITextField+PlaceholderColor.h"

static NSString *const PlaceholderColorKey = @"placeholderLabel.textColor";

@implementation UITextField (PlaceholderColor)

- (void)setPlaceholderColor:(UIColor *)placeholderColor {
    // 提前设置占位文字, 目的: 让它提前创建 placeholderLabel
    NSString *oldPlaceholder = self.placeholder;
    self.placeholder = @" ";
    self.placeholder = oldPlaceholder;
    
    // 恢复到默认的占位文字颜色
    if (placeholderColor == nil) {
        placeholderColor = [UIColor colorWithRed:0 green:0 blue:0.0980392 alpha:0.22];
    }
    
    // 设置占位文字颜色
    [self setValue:placeholderColor forKeyPath:PlaceholderColorKey];
}

- (UIColor *)placeholderColor {
    return [self valueForKeyPath:PlaceholderColorKey];
}

@end
