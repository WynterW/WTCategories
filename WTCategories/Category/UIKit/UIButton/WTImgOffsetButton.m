//
//  WTImgOffsetButton.m
//  WTCategories
//
//  Created by Wynter on 2018/12/3.
//  Copyright © 2018 Wynter. All rights reserved.
//

#import "WTImgOffsetButton.h"

@implementation WTImgOffsetButton

/**
 重新布局button的内容
 */
- (void)layoutSubviews {

    [super layoutSubviews];

    switch (self.customstyle) {
        case WTButtonCustomStylePicTop: {
            [self setTitleEdgeInsets:UIEdgeInsetsZero];

            [self.titleLabel sizeToFit];
            CGRect labelFrame = self.titleLabel.frame;

            [self.imageView sizeToFit];
            CGRect imageFrame = self.imageView.frame;

            imageFrame.origin.x = (self.frame.size.width - imageFrame.size.width) * 0.5;
            imageFrame.origin.y = (self.frame.size.height - imageFrame.size.height - labelFrame.size.height - self.customSpace) * 0.5;
            self.imageView.frame = imageFrame;

            labelFrame.origin.x = (self.frame.size.width - labelFrame.size.width) * 0.5;
            labelFrame.origin.y = imageFrame.origin.y + imageFrame.size.height + self.customSpace;
            self.titleLabel.frame = labelFrame;

            break;
        }
        case WTButtonCustomStylePicLeft: {
            [self.titleLabel sizeToFit];
            CGRect labelFrame = self.titleLabel.frame;

            [self.imageView sizeToFit];
            CGRect imageFrame = self.imageView.frame;

            imageFrame.origin.x = (self.frame.size.width - imageFrame.size.width - labelFrame.size.width - self.customSpace) * 0.5;
            imageFrame.origin.y = (self.frame.size.height - imageFrame.size.height) * 0.5;
            self.imageView.frame = imageFrame;

            labelFrame.origin.x = imageFrame.origin.x + imageFrame.size.width + self.customSpace;
            labelFrame.origin.y = (self.frame.size.height - labelFrame.size.height) * 0.5;
            self.titleLabel.frame = labelFrame;

            break;
        }
        case WTButtonCustomStylePicDown: {
            [self.titleLabel sizeToFit];
            CGRect labelFrame = self.titleLabel.frame;

            [self.imageView sizeToFit];
            CGRect imageFrame = self.imageView.frame;

            labelFrame.origin.x = 10;
            labelFrame.origin.y = 10;
            labelFrame.size.width = self.frame.size.width - 20;
            self.titleLabel.frame = labelFrame;

            imageFrame.origin.x = 0;
            imageFrame.origin.y = 0;
            imageFrame.size.width = self.frame.size.width;
            imageFrame.size.height = self.frame.size.height;
            self.imageView.frame = imageFrame;
            break;
        }
        case WTButtonCustomStylePicRight: {
            [self.titleLabel sizeToFit];
            CGRect labelFrame = self.titleLabel.frame;

            [self.imageView sizeToFit];
            CGRect imageFrame = self.imageView.frame;
            if (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentLeft) {
                labelFrame.origin.x = 0;
            } else {
                labelFrame.origin.x = (self.frame.size.width - imageFrame.size.width - labelFrame.size.width - self.customSpace) * 0.5;
            }

            labelFrame.origin.y = (self.frame.size.height - labelFrame.size.height) * 0.5;
            self.titleLabel.frame = labelFrame;

            imageFrame.origin.x = labelFrame.origin.x + labelFrame.size.width + self.customSpace;
            imageFrame.origin.y = (self.frame.size.height - imageFrame.size.height) * 0.5;
            self.imageView.frame = imageFrame;

            break;
        }
        default:
            break;
    }
}


@end

