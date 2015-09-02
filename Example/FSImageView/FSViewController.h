//
//  FSViewController.h
//  FSImageView
//
//  Created by YongCao on 08/31/2015.
//  Copyright (c) 2015 YongCao. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "FSImageView.h"

@import UIKit;

@interface FSViewController : UIViewController <FSImageViewDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;
@property (weak, nonatomic) IBOutlet UIImageView *imageView3;
@property (weak, nonatomic) IBOutlet UIImageView *imageView4;
@property (weak, nonatomic) IBOutlet UIImageView *imageView5;
@property (weak, nonatomic) IBOutlet UIImageView *imageView6;
@end
