//
//  WTCategories
//
//  Created by Wynter on 2018/9/7.
//  Copyright © 2018年 Wynter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface UIViewController (Ex)


/**
 检测是否定位功能，是否打开如果关闭引导用户打开
 */
- (BOOL)isOpenGPS;


/**
 跳转到第三方地图导航（系统地图、百度地图、高德地图）

 @param location 经纬度
 @param address 地址名称
 */
- (void)pushNavigationWithLocation:(CLLocationCoordinate2D)location address:(NSString *)address;

@end
