//
//  UITextField+MaxLength.h
//  WTCategories
//
//  Created by Wynter on 2019/1/22.
//  Copyright © 2019 Wynter. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

IB_DESIGNABLE

@interface UITextField (MaxLength)

@property (assign, nonatomic) IBInspectable NSUInteger maxLength;

@end

NS_ASSUME_NONNULL_END
