//
//  WTCategories
//
//  Created by Wynter on 2018/9/7.
//  Copyright © 2018年 Wynter. All rights reserved.
//

#import "NSString+Password.h"

typedef NS_ENUM(NSInteger, CharType) {
    CharTypeUppercase = 1, // 大写字符
    CharTypeLowercase      // 小写字符
};

@implementation NSString (Password)

#pragma mark -   校验密码合规性
// 字符串中是否包含受限字符串，4位起受限
- (BOOL)containsLimitNumber:(NSString *)limitNumber {
    if (limitNumber.length < 4 || limitNumber == nil) return NO;
    
    for (int i = 0; i <= limitNumber.length - 4; i++) {
        NSString *re = [limitNumber substringWithRange:NSMakeRange(i, 4)];
        BOOL isContain = [self containsString:re];
        if (isContain) {
            NSLog(@"密码中包含限制使用的数字：%d", isContain);
            return YES;
            break;
        }
    }
    return NO;
}

- (BOOL)passwordRules {
    // 至少八个字符，最多二十个字符，字母、数字、字符任意两种组合
    //!@#$%^&*()._-\|~`,<>;:[]{}"?/=+
    NSString *pattern = @"^(?![0-9]+$)(?![a-z]+$)(?![A-Z]+$)[A-Za-z0-9\x21-\x7e]{8,20}$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    if (![pred evaluateWithObject:self]) {
        return NO;
    }

    // 解决可以验证通过的bug  -/:;()$&@"'!?,.[]{}#
    NSInteger num = [self getNumOfNum];
    NSInteger lowerCase = [self getNumOfLowerCase];
    NSInteger upperCase = [self getNumOfUpperCase];
    if ((num + lowerCase + upperCase) == 0) {
        return NO;
    }
    
    // 判断是否包行3个连续小写字母的个数(如abc,bcd)
    if ([self getNumOfSeriesCharThreeWithCharType:CharTypeLowercase] > 0) {
        return NO;
    }
    
    // 判断是否包行3个连续大写字母的个数(如ABC,BCD)
    if ([self getNumOfSeriesCharThreeWithCharType:CharTypeUppercase] > 0) {
        return NO;
    }
    
    // 判断是否包含3个连续且相同的字符(如AAA，aaa，@@@，111)
    if ([self threeEqualChar]) {
        return NO;
    }
    
    // 判断是否包行3个连续数字的个数(如123,345)
    if ([self getNumOfSeriesNumThree] > 0) {
        return NO;
    }
    
    return YES;
}

//获取数字字母数量
- (NSInteger)getNumOfNum {
    return [self getNumWithPattern:@"[0-9]"];
}

// 获取大写字母数量
- (NSInteger)getNumOfUpperCase {
    return [self getNumWithPattern:@"[A-Z]"];
}

// 获取小写字母数量
- (NSInteger)getNumOfLowerCase {
    return [self getNumWithPattern:@"[a-z]"];
}

- (NSInteger)getNumWithPattern:(NSString *)pattern {
    
    NSRegularExpression *regularExpression = [[NSRegularExpression alloc] initWithPattern:pattern
                                                                                  options:0
                                                                                    error:nil];
    NSUInteger countRegex = [regularExpression numberOfMatchesInString:self options:NSMatchingReportCompletion range:NSMakeRange(0, self.length)];
    return countRegex;
}

//获取连续字母abc def之类超过3个的个数
- (NSInteger)getNumOfSeriesCharThreeWithCharType:(CharType)charType {
    
    NSString *pattern = charType == CharTypeUppercase ? @"[A-Z]" : @"[a-z]";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    
    NSInteger j = 0;
    const char *chars = self.UTF8String;
    for (int i = 0; i < self.length-2; i++) {
        
        NSString *subString = [self substringWithRange:NSMakeRange(i, 1)];
        char char1 = chars[i];
        char char2 = chars[i+1];
        char char3 = chars[i+2];
        
        BOOL isSubMatch = [pred evaluateWithObject:subString];
        if (isSubMatch) {
            NSLog(@"sub:%@,%c-%c-%c",subString,char1,char2,char3);
        }
        
        if (isSubMatch && char1 == char2 - 1 && char1 == char3 - 2) {
            j++;
        }
    }
    return j;
}

//获取三个连续且相同的字符数 aaa AAA 111 @@@
- (NSInteger)threeEqualChar {
    NSInteger j = 0;
    const char *chars = self.UTF8String;
    for (int i = 0; i < self.length-2; i++) {
        
        NSString *subString = [self substringWithRange:NSMakeRange(i, 1)];
        char char1 = chars[i];
        char char2 = chars[i+1];
        char char3 = chars[i+2];
        
        NSLog(@"sub:%@,%c-%c-%c",subString,char1,char2,char3);
        
        if (char1 == char2 && char1 == char3) {
            j++;
        }
    }
    return j;
}

//连续数字123 234之类超过3个的数量
- (NSInteger)getNumOfSeriesNumThree {
    
    NSString *pattern = @"[0-9]";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    
    NSInteger j = 0;
    for (int i = 0; i < self.length-2; i++) {
        
        NSString *subString = [self substringWithRange:NSMakeRange(i, 1)];
        NSString *subString1 = [self substringWithRange:NSMakeRange(i+1, 1)];
        NSString *subString2 = [self substringWithRange:NSMakeRange(i+2, 1)];
        
        NSInteger value = subString.integerValue;
        NSInteger value1 = subString1.integerValue;
        NSInteger value2 = subString2.integerValue;
        
        BOOL isSubMatch = [pred evaluateWithObject:subString];
        if (isSubMatch && value == value1 - 1 && value == value2 - 2) {
            j++;
        }
    }
    return j;
}


@end
