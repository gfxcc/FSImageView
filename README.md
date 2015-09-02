FSImageView
==========

This framework provide an easy way to use class to show full-size image when tapping on UIImageView.

[![CI Status](http://img.shields.io/travis/YongCao/FSImageView.svg?style=flat)](https://travis-ci.org/YongCao/FSImageView)
[![Version](https://img.shields.io/cocoapods/v/FSImageView.svg?style=flat)](http://cocoapods.org/pods/FSImageView)
[![License](https://img.shields.io/cocoapods/l/FSImageView.svg?style=flat)](http://cocoapods.org/pods/FSImageView)
[![Platform](https://img.shields.io/cocoapods/p/FSImageView.svg?style=flat)](http://cocoapods.org/pods/FSImageView)

The full-size image can be full screen or custom-size UIView. When user tap the customed UIImageVIew, there will be a animation transation between UIImageView and full-size UIView. Two delegates were prepared for actions during two transation process.

**Take a look at the Example project to see how to use this library.** You have to open the workspace, not the project file, since the Example project uses cocoapods.

Get in contact with the developer by Email: yong_stevens@outlook.com

# Installation

## From CocoaPods
FSImageView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "FSImageView"

## From CocoaPods
Copy the source files into your project.

# Usage

```objective-c
    FSImageView *fullSizeImage = [[FSImageView alloc] initWithBounds:self.view.bounds SuperView:self.view ImageView:cell.icon Image:cell.icon.image];
    fullSizeImage.delegate = self;
    [self.view addSubview:fullSizeImage];
```objective-c

# delegate
```objective-c
    // call after original imageView tapped
    - (void) originalImageViewTapped;
    // call after full size imageView tapped
    - (void) fullSizeViewTapped;
```objective-c

## Author

YongCao, yong_stevens@outlook.com

## License

FSImageView is available under the MIT license. See the LICENSE file for more info.
