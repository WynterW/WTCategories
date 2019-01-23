//
//  UIButton+Next.h
//  WTCategories
//
//  Created by Wynter on 2019/1/3.
//  Copyright © 2019 Wynter. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (Next)

@property (nonatomic, assign) BOOL wt_enabled;

@property (nonatomic, strong) UIColor *wt_backgroundColor;
@property (nonatomic, strong) UIColor *wt_selectedBackgroundColor;


@end

NS_ASSUME_NONNULL_END
