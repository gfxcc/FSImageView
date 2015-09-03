//
//  FSImageView.m
//  Pods
//
//  Created by caoyong on 9/1/15.
//
//

#import "FSImageView.h"

@implementation FSImageView

- (instancetype)initWithBounds:(CGRect)Bounds SuperView:(UIView *)SuperView ImageView:(UIImageView *)ImageView Image:(UIImage *)Image {
    _smallImage = ImageView;
    _superView = SuperView;
    _image = Image;
    _ViewBounds = Bounds;
    
    // init full size image uiview
    
    self = [super initWithFrame:_ViewBounds];
    self.backgroundColor = [UIColor clearColor];
    self.alpha = 0.0;
    //[_superView addSubview:self];
    
    // init backgrand uiview
    _imageBackgrand = [[UIView alloc] initWithFrame:self.bounds];
    _imageBackgrand.backgroundColor = [UIColor blackColor];
    _imageBackgrand.alpha = 0.0;
    [self addSubview:_imageBackgrand];
    
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(Tapped)];
    [ImageView setUserInteractionEnabled:YES];
    [ImageView addGestureRecognizer:tapGestureRecognizer];
    
    _imageView = [[UIImageView alloc] init];
    
    return self;
}

- (void)Tapped {
    [_superView bringSubviewToFront:self];
    self.alpha = 1.0;
    
    // init image view
    
    _imageView.clipsToBounds = YES;
    _imageView.contentMode = UIViewContentModeScaleAspectFill;
    [self addSubview:_imageView];
    
    CGRect convertRect = [[_smallImage superview] convertRect:_smallImage.frame toView:self];
    _imageView.frame = convertRect;
    [self setImage];
    
    [self performSelector:@selector(setOriginFrame) withObject:nil afterDelay:0.1];
    
    // delegate
    if ([self delegateRespondsToOriginalSelector]) {
        [self.delegate originalImageViewTapped];
    }
}

- (void) setOriginFrame
{
    [UIView animateWithDuration:0.4 animations:^{
        _imageView.frame = _scaleOriginRect;
        _imageBackgrand.alpha = 1.0;
    }];
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapImageViewTapped)];
    [_imageView setUserInteractionEnabled:YES];
    [_imageView addGestureRecognizer:tapGestureRecognizer];
}

- (void) tapImageViewTapped {
    
    [UIView animateWithDuration:0.5 animations:^{
        _imageBackgrand.alpha = 0;
        //self.zoomScale = 1.0;
        CGRect convertRect = [[_smallImage superview] convertRect:_smallImage.frame toView:self];
        _imageView.frame = convertRect;
    } completion:^(BOOL finished) {
        self.alpha = 0;
    }];
    
    if ([self delegateRespondsToFullSizeSelector]) {
        [self.delegate fullSizeViewTapped];
    }
}

- (void) setImage
{
    if (_image)
    {
        _imageView.image = _image;
        CGSize imgSize = _image.size;
        
        //
        float scaleX = _ViewBounds.size.width/imgSize.width;
        float scaleY = _ViewBounds.size.height/imgSize.height;
        
        //which side longer
        
        if (scaleX > scaleY)
        {
            //
            float imgViewWidth = imgSize.width*scaleY;
            _scaleOriginRect = (CGRect){self.frame.size.width/2-imgViewWidth/2,0,imgViewWidth,self.frame.size.height};
        }
        else
        {
            //X先到边缘
            float imgViewHeight = imgSize.height*scaleX;
            _scaleOriginRect = (CGRect){0,self.frame.size.height/2-imgViewHeight/2,self.frame.size.width,imgViewHeight};
        }
    }
}

#pragma mark -
#pragma mark - FullSize delegate





- (BOOL)delegateRespondsToOriginalSelector {
    if ([self.delegate respondsToSelector:@selector(originalImageViewTapped)]) {
        return YES;
    } else {
        NSLog(@"Attention! Your delegate doesn't have originalImageViewTapped method implementation!");
        return NO;
    }
}

- (BOOL)delegateRespondsToFullSizeSelector {
    if ([self.delegate respondsToSelector:@selector(fullSizeViewTapped)]) {
        return YES;
    } else {
        NSLog(@"Attention! Your delegate doesn't have fullSizeViewTapped method implementation!");
        return NO;
    }
}

@end
