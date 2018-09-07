//
//  WTCategories
//
//  Created by Wynter on 2018/9/7.
//  Copyright © 2018年 Wynter. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Password)


/**
 建议密码长度至少 8位字符，密码复杂性要求至少包含以下4种类别中的2种：大写字母、小写字母、数字、特殊符号；提示客户不能重号、连号等作为密码或者密码的组成部分

 @return 密码是否符合规则
 */
- (BOOL)passwordRules;

/**
  字符串中是否包含受限字符串，4位起受限，例如不能是手机号码、身份证号码中连续几位作为密码的组成部分

 @param limitNumber 禁止出现的号码
 @return 是否包含受限字符串
 */
- (BOOL)containsLimitNumber:(NSString *)limitNumber;

@end
