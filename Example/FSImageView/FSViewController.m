//
//  FSViewController.m
//  FSImageView
//
//  Created by YongCao on 08/31/2015.
//  Copyright (c) 2015 YongCao. All rights reserved.
//

#import "FSViewController.h"
#import "FSImageView.h"

@interface FSViewController ()

@end

@implementation FSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    FSImageView *fullSizeImage1 = [[FSImageView alloc] initWithBounds:self.view.bounds SuperView:self.view ImageView:_imageView1 Image:[UIImage imageNamed:@"1.png"]];
    fullSizeImage1.delegate = self;
    [self.view addSubview:fullSizeImage1];
    
    FSImageView *fullSizeImage2 = [[FSImageView alloc] initWithBounds:self.view.bounds SuperView:self.view ImageView:_imageView2 Image:[UIImage imageNamed:@"2.png"]];
    fullSizeImage2.delegate = self;
    [self.view addSubview:fullSizeImage2];
    
    FSImageView *fullSizeImage3 = [[FSImageView alloc] initWithBounds:self.view.bounds SuperView:self.view ImageView:_imageView3 Image:[UIImage imageNamed:@"3.png"]];
    fullSizeImage3.delegate = self;
    [self.view addSubview:fullSizeImage3];
    
    FSImageView *fullSizeImage4 = [[FSImageView alloc] initWithBounds:self.view.bounds SuperView:self.view ImageView:_imageView4 Image:[UIImage imageNamed:@"4.png"]];
    fullSizeImage4.delegate = self;
    [self.view addSubview:fullSizeImage4];
    
    FSImageView *fullSizeImage5 = [[FSImageView alloc] initWithBounds:self.view.bounds SuperView:self.view ImageView:_imageView5 Image:[UIImage imageNamed:@"5.png"]];
    fullSizeImage5.delegate = self;
    [self.view addSubview:fullSizeImage5];
    
    FSImageView *fullSizeImage6 = [[FSImageView alloc] initWithBounds:self.view.bounds SuperView:self.view ImageView:_imageView6 Image:[UIImage imageNamed:@"6.png"]];
    fullSizeImage6.delegate = self;
    [self.view addSubview:fullSizeImage6];
}

#pragma mark - FullSizeView delegate -
- (void)originalImageViewTapped {
    NSLog(@"first tap");
}

- (void)fullSizeViewTapped {
    NSLog(@"second tap");
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
