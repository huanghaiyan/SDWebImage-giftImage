//
//  ViewController.m
//  SDWebImage-giftImage
//
//  Created by huanghy on 15/12/22.
//  Copyright © 2015年 huanghy. All rights reserved.
//

#import "ViewController.h"
#import <UIImage+GIF.h>
@interface ViewController ()

@property (nonatomic, strong) UIImageView *loadingImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initLoadingImageView];
}

- (void)initLoadingImageView

{

    NSString  *filePath = [[NSBundle bundleWithPath:[[NSBundle mainBundle] bundlePath]] pathForResource:@"2.gif" ofType:nil];
    
    NSData  *imageData = [NSData dataWithContentsOfFile:filePath];
    
    self.loadingImageView = [[UIImageView alloc]init];
        self.loadingImageView.frame = CGRectMake(0, 0, self.view.frame.size.width,  self.view.frame.size.height);
    
    self.loadingImageView.backgroundColor = [UIColor blueColor];
    //第一种方法使用imageData加载
    self.loadingImageView.image = [UIImage sd_animatedGIFWithData:imageData];
    //第二种方法使用图片名字加载
    //self.loadingImageView.image = [UIImage sd_animatedGIFNamed:@"2"];
    
    [self.view addSubview:self.loadingImageView];
    
    [self.view bringSubviewToFront:self.loadingImageView];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
