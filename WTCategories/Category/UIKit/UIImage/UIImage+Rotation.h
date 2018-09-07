//
//  WTCategories
//
//  Created by Wynter on 2018/9/7.
//  Copyright © 2018年 Wynter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Rotation)

- (UIImage *)image:(UIImage *)image rotation:(UIImageOrientation)orientation;

//指定宽度按比例缩放
-(UIImage *) imageCompressForWidth:(UIImage *)sourceImage targetWidth:(CGFloat)defineWidth;

@end
