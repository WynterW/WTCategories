//
//  UIDevice+Ex.h
//  WTCategories
//
//  Created by Wynter on 2019/6/11.
//  Copyright © 2019 Wynter. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIDevice (Ex)

/**
 判断是不是模拟器
 
 @return BOOL
 */
- (BOOL)isSimulator;

/**
 判断手机是否越狱
 
 @return BOOL
 */
- (BOOL)isJailbroken;

@end

NS_ASSUME_NONNULL_END
