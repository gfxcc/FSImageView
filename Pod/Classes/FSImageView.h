//
//  FSImageView.h
//  Pods
//
//  Created by caoyong on 9/1/15.
//
//

#import <UIKit/UIKit.h>

@protocol FSImageViewDelegate <NSObject>

// call after original imageView tapped
- (void) originalImageViewTapped;
// call after full size imageView tapped
- (void) fullSizeViewTapped;

@end

@interface FSImageView : UIView

@property (assign,nonatomic) id<FSImageViewDelegate> delegate;
@property (strong, nonatomic) UIImageView *smallImage;
@property (strong, nonatomic) UIView *superView;
@property (strong, nonatomic) UIImage *image;
@property (nonatomic) CGRect ViewBounds;
//
//
//
@property (strong, nonatomic) UIView *imageBackgrand;
@property (strong, nonatomic) UIImageView *imageView;
@property (strong, nonatomic) UITapGestureRecognizer *tapGestureRecognizer;
@property (nonatomic) CGRect scaleOriginRect;

- (instancetype)initWithBounds:(CGRect)Bounds SuperView:(UIView *)SuperView ImageView:(UIImageView *)ImageView Image:(UIImage *)Image;

@end

