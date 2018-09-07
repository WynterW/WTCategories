//
//  WTCategories
//
//  Created by Wynter on 2018/9/7.
//  Copyright © 2018年 Wynter. All rights reserved.
//

#import "MJRefresh.h"

@interface MJRefreshGifHeader (AJRefreshHeader)

+ (instancetype)ajHeaderWithRefreshingTarget:(id)target refreshingAction:(SEL)action;

+ (MJRefreshGifHeader*)prepareRefresh:(MJRefreshGifHeader *)header;

@end
