//
//  UIButton+Next.m
//  WTCategories
//
//  Created by Wynter on 2019/1/3.
//  Copyright © 2019 Wynter. All rights reserved.
//

#import "UIButton+Next.h"
#import <objc/runtime.h>

static const void *wt_backgroundColorKey = &wt_backgroundColorKey;
static const void *wt_selectedBackgroundColorKey = &wt_selectedBackgroundColorKey;
static const void *wt_enabledKey = &wt_enabledKey;

@implementation UIButton (Next)

- (void)setWt_enabled:(BOOL)wt_enabled {
    self.selected = wt_enabled;
    self.userInteractionEnabled = wt_enabled;
    if (wt_enabled) {
        if (self.wt_selectedBackgroundColor) {
            [self setBackgroundColor:self.wt_selectedBackgroundColor];
        } else {
            self.wt_backgroundColor = self.backgroundColor;
        }
    } else {
        if (self.wt_backgroundColor) {
            [self setBackgroundColor:self.wt_backgroundColor];
        } else {
            self.wt_backgroundColor = self.backgroundColor;
        }
    }
    objc_setAssociatedObject(self, wt_enabledKey, @(wt_enabled), OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)wt_enabled {
    NSNumber *enabled = (NSNumber *)objc_getAssociatedObject(self, wt_enabledKey);
    return enabled.integerValue;
}

- (void)setWt_backgroundColor:(UIColor *)wt_backgroundColor {
    self.backgroundColor = wt_backgroundColor;
    objc_setAssociatedObject(self, wt_backgroundColorKey, wt_backgroundColor, OBJC_ASSOCIATION_RETAIN);
}

- (UIColor *)wt_backgroundColor {
    return objc_getAssociatedObject(self, wt_backgroundColorKey);
}

- (void)setWt_selectedBackgroundColor:(UIColor *)wt_selectedBackgroundColor {
    objc_setAssociatedObject(self, wt_selectedBackgroundColorKey, wt_selectedBackgroundColor, OBJC_ASSOCIATION_RETAIN);
}

- (UIColor *)wt_selectedBackgroundColor {
    return objc_getAssociatedObject(self, wt_selectedBackgroundColorKey);
}


@end

