//
//  WTCategories
//
//  Created by Wynter on 2018/9/7.
//  Copyright © 2018年 Wynter. All rights reserved.
//

#import "MJRefreshGifHeader+AJRefreshHeader.h"

@implementation MJRefreshGifHeader (AJRefreshHeader)

+ (instancetype)ajHeaderWithRefreshingTarget:(id)target refreshingAction:(SEL)action{
    
    MJRefreshGifHeader *header = [MJRefreshGifHeader headerWithRefreshingTarget:target refreshingAction:@selector(action)];
    
    NSMutableArray *headerImages = [NSMutableArray array];
    for (int i = 1; i <= 13; i++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"progress2_%d",i]];
        [headerImages addObject:image];
    }
    //    MJRefreshGifHeader *gifHeader = [MJRefreshGifHeader headerWithRefreshingBlock:^{
    //        //下拉刷新要做的操作.
    //    }];
    header.stateLabel.hidden = YES;
    header.lastUpdatedTimeLabel.hidden = YES;
    
    [header setImages:@[headerImages[0]] forState:MJRefreshStateIdle];
    [header setImages:headerImages forState:MJRefreshStateRefreshing];
    
    return header;
}

+ (MJRefreshGifHeader*)prepareRefresh:(MJRefreshGifHeader *)header{
    
    NSMutableArray *headerImages = [NSMutableArray array];
    for (int i = 1; i <= 13; i++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"progress2_%d",i]];
        [headerImages addObject:image];
    }
    header.stateLabel.hidden = YES;
    header.lastUpdatedTimeLabel.hidden = YES;
    
    [header setImages:@[headerImages[0]] forState:MJRefreshStateIdle];
    [header setImages:headerImages forState:MJRefreshStateRefreshing];
    
    return header;
}

@end
