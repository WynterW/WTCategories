//
//  WTCategories
//
//  Created by Wynter on 2018/9/7.
//  Copyright © 2018年 Wynter. All rights reserved.
//

#import "NSString+Ex.h"

@implementation NSString (Ex)

- (NSString *)showDistanceStr {
    if (self == nil) {
        return @"";
    }
    
    CGFloat distanceNum = [self floatValue];
    NSString *distanceStr = @"";
    if (distanceNum >= 1000) {
        CGFloat result = distanceNum/1000;
        distanceStr = [NSString stringWithFormat:@"%.1fkm",result];
    } else {
        distanceStr = [NSString stringWithFormat:@"%.fm",distanceNum];
    }
    
    return distanceStr;
}

- (NSString *)separatedDigitString {
    if (self == nil) {
        return self;
    }
    
    double number = [self doubleValue];
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    formatter.numberStyle = kCFNumberFormatterCurrencyStyle;
    return [formatter stringFromNumber:[NSNumber numberWithDouble:number]];
}

- (NSAttributedString *)attributeSearchString:(NSString *)searchString textFont:(UIFont *)textFont textColor:(UIColor *)textColor {
    // 不区分大小写
    NSString *originString = [self uppercaseString];
    searchString = [searchString uppercaseString];
    
    NSMutableAttributedString *arrributeStr = [[NSMutableAttributedString alloc]initWithString:self];
    
    for (int j = 0; j < searchString.length; j++) {
        NSString *key = [searchString substringWithRange:NSMakeRange(j, 1)];;
        for(int i = 0; i < originString.length; i++) {
            NSRange range = NSMakeRange(i, 1);
            if ((i + 1) > originString.length) break;
            
            NSString *temp = [originString substringWithRange:NSMakeRange(i, 1)];
            
            if (![temp isEqualToString:key]) continue;
            
            if (textFont) {
                [arrributeStr addAttribute:NSFontAttributeName value:textFont range:range];
            }
            
            if (textColor) {
                [arrributeStr addAttribute:NSForegroundColorAttributeName value:textColor range:range];
            }
        }
    }
    
    return arrributeStr;
}

@end

