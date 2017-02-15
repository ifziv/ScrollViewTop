//
//  ViewController.m
//  ScrollViewTop
//
//  Created by zivInfo on 17/2/15.
//  Copyright © 2017年 xiwangtech.com. All rights reserved.
//

#import "ViewController.h"

#import "ZVScrollView.h"
#import "ZCScrollView.h"

@interface ViewController ()

@property (nonatomic,strong) ZVScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*
    self.scrollView = [[ZVScrollView alloc]initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, 200) ImagesCount:5];
    [self.scrollView tapImageViewBlock:^(NSInteger tag) {
        
        NSLog(@"第 %zd 页",tag);
        
    }];
    
    [self.view addSubview:self.scrollView];
     */
    
    //轮播控件
    ZCScrollView *scrollView = [[ZCScrollView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth([UIScreen mainScreen].bounds), CGRectGetWidth([UIScreen mainScreen].bounds) / 320 * 160)];
    scrollView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:scrollView];
    
    NSArray *dicArray = @[
                          @{
                              @"url" : @"http://pic.58pic.com/58pic/17/27/03/07B58PIC3zg_1024.jpg"
                              },
                          @{
                              @"url" : @"http://pic.58pic.com/58pic/13/18/14/87m58PICVvM_1024.jpg"
                              },
                          @{
                              @"url" : @"http://pic.58pic.com/58pic/13/56/99/88f58PICuBh_1024.jpg"
                              },
                          @{
                              @"url" : @"http://pic.58pic.com/58pic/17/77/53/558d11422a923_1024.png"
                              },
                          @{
                              @"url" : @"http://pic.58pic.com/58pic/13/18/14/87m58PICVvM_1024.jpg"
                              },
                          @{
                              @"url" : @"http://pic.qiantucdn.com/58pic/17/79/77/41N58PICaMu_1024.jpg"
                              }
                          ];
    
    [scrollView setZCScrollViewWithArray:dicArray];
    
    [scrollView tapImageViewBlock:^(NSInteger curPage) {
        NSLog(@"page %zd", curPage);
        
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.baidu.com"]];

    }];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
