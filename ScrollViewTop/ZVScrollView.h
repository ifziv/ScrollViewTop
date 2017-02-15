//
//  ZVScrollView.h
//  ScrollViewTop
//
//  Created by zivInfo on 17/2/15.
//  Copyright © 2017年 xiwangtech.com. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^TapImageViewBlock)(NSInteger tag);

@interface ZVScrollView : UIView


@property (strong, nonatomic) UIScrollView  *scrollView;
@property (strong, nonatomic) UIPageControl *pageControl;
@property (nonatomic, strong) UIImageView   *imageView;
@property (nonatomic, strong) NSTimer       *timer;
@property (nonatomic, strong) TapImageViewBlock tapImageBlock;

- (instancetype)initWithFrame:(CGRect)frame ImagesCount:(NSInteger )ImageCount;
- (void)tapImageViewBlock:(TapImageViewBlock)tapImageBlock;


@end
