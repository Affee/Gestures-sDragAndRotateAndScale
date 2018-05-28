//
//  ChatBubble.m
//  气泡文字
//
//  Created by Affee on 2018/1/22.
//  Copyright © 2018年 affee. All rights reserved.
//

#import "ChatBubble.h"

static const CGFloat kLeftMargin = 20;
static const CGFloat kOtherMargin = 10;

@interface ChatBubble ()
@property (nonatomic, strong) UILabel * textLabel;

@end

@implementation ChatBubble

-(UILabel *)textLabel
{
    if (!_textLabel) {
        _textLabel = [[UILabel alloc]init];
//        _textLabel.font = [UIFont systemFontOfSize:20];
        _textLabel.font = [UIFont fontWithName:@"AmericanTypewriter-Bold"size:15.f];
        _textLabel.textColor = [UIColor redColor];
        _textLabel.textAlignment = NSTextAlignmentCenter;
//        _textLabel.text = @"hahahaha";
        _textLabel.numberOfLines = 0;
        _textLabel.preferredMaxLayoutWidth = 100;
    }
    return _textLabel;
}
-(instancetype)init
{
    if (!self) {
        //        拉伸图片
        self.image = [UIImage imageNamed:@"资源 10.png"];
        self.image = [self.image resizableImageWithCapInsets:UIEdgeInsetsMake(20, 20, 20, 20) resizingMode:UIImageResizingModeStretch];
        self.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:self.textLabel];
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame: frame]) {
        

//        拉伸图片
        self.image = [UIImage imageNamed:@"资源 10.png"];
        self.image = [self.image resizableImageWithCapInsets:UIEdgeInsetsMake(20, 20, 20, 20) resizingMode:UIImageResizingModeStretch];
        self.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:self.textLabel];
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
    _textLabel.backgroundColor = [UIColor grayColor];
    CGFloat imageWidth = size.width;
    
   CGFloat imageHeight = kOtherMargin * 2 + _textLabel.frame.size.height;

    return CGSizeMake(imageWidth, imageHeight);
}







@end
