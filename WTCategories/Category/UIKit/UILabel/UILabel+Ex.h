//
//  WTCategories
//
//  Created by Wynter on 2018/9/7.
//  Copyright © 2018年 Wynter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Ex)

- (CGSize)boundingRectWithSize:(CGSize)size;

- (void)attributedWithFont:(UIFont *)font color:(UIColor *)color range:(NSRange)range;
@end
