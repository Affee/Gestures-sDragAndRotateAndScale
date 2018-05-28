//  StickerView
//  BeautyHour
//
//  Created by Johnny Xu(徐景周) on 7/23/14.
//  Copyright (c) 2014 Future Studio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+Frame.h"
#import "UIImage+Utility.h"
#import "CircleView.h"

@interface StickerView : UIView

@property(nonatomic,copy)NSString *text;
@property(nonatomic,strong)UILabel *textLabel;


+ (void)setActiveStickerView:(StickerView*)view;

- (UIImageView*)imageView;
- (id)initWithImage:(UIImage *)image;
- (void)setScale:(CGFloat)scale;
- (void)setScale:(CGFloat)scaleX andScaleY:(CGFloat)scaleY;




@end
