//
//  ChatBubbleView.m
//  手势识别--拖动，旋转，缩放
//
//  Created by Affee on 2018/1/23.
//  Copyright © 2018年 affee. All rights reserved.
//

#import "ChatBubbleView.h"
#import "UIView+Frame.h"


static const CGFloat kLeftMargin = 20;
static const CGFloat kOtherMargin = 10;

@interface ChatBubbleView()
@property(nonatomic,strong)UILabel *textLabel;

@end

@implementation ChatBubbleView

-(UILabel *)textLabel
{
    if (_textLabel) {
        _textLabel = [[UILabel alloc]init];
        _textLabel.font = [UIFont fontWithName:@"AmericanTypewriter-Bold"size:15.f];
        _textLabel.textColor = [UIColor redColor];
        _textLabel.textAlignment = NSTextAlignmentCenter;
        //        _textLabel.text = @"hahahaha";
        _textLabel.numberOfLines = 0;
        _textLabel.preferredMaxLayoutWidth = 100;
    }
    return _textLabel;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame: frame]) {
        
        
        self.width = frame.size.width;
        self.height = frame.size.height;
        //        拉伸图片
//        self.image = [UIImage imageNamed:@"资源 10.png"];
//        self.image = [self.image resizableImageWithCapInsets:UIEdgeInsetsMake(20, 20, 20, 20) resizingMode:UIImageResizingModeStretch];
        UIImageView *imageV = [[UIImageView alloc]initWithFrame:self.frame];
        imageV.image = [UIImage imageNamed:@"资源 10.png"];
        imageV.image = [imageV.image resizableImageWithCapInsets:UIEdgeInsetsMake(20, 20, 20, 20) resizingMode:UIImageResizingModeStretch];
        self.backgroundColor = [UIColor blueColor];
        self.contentMode = UIViewContentModeScaleAspectFit;
        [imageV addSubview:self.textLabel];
        [self addSubview:imageV];

    }
    return self;
}



-(void)setText:(NSString *)text
{
    _text = text;
    _textLabel.text = text;
}

-(CGSize)sizeThatFits:(CGSize)size
{
    CGFloat width = size.width - kLeftMargin-kOtherMargin;
    CGSize sizeLable = [_textLabel sizeThatFits:CGSizeMake(width, MAXFLOAT)];
    _textLabel.frame = CGRectMake(60, 60, 80, 60);
    
    CGFloat ViewWidth = size.width;
    
    CGFloat ViewHeight = kOtherMargin * 2 + _textLabel.frame.size.height;
    
    return CGSizeMake(ViewWidth, ViewHeight);
}





@end
