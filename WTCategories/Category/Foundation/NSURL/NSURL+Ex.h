//
//  NSURL+Ex.h
//  WTCategories
//
//  Created by Wynter on 2019/6/11.
//  Copyright © 2019 Wynter. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSURL (Ex)

@property (nonatomic, strong) NSDictionary *parameters; /**< 返回URL中的键值对参数的字典*/

/**
 通过key获取对应的字符串
 
 @param key key
 @return string
 */
- (NSString *)parameterForKey:(NSString *)key;

/**
 通过key获取值

 @param key key
 @return 取值对象
 */
- (id)objectForKeyedSubscript:(id)key NS_AVAILABLE(10_8, 6_0);

@end

NS_ASSUME_NONNULL_END
