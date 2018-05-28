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


@end

@implementation ChatBubble



-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame: frame]) {
        _textLabel = [[UITextView alloc]init];
        _textLabel.font = [UIFont systemFontOfSize:17];
        _textLabel.textColor = [UIColor redColor];
        _textLabel.text = @"hahahaha";

//        拉伸图片
        self.image = [UIImage imageNamed:@"ssss.jpg"];
        self.image = [self.image resizableImageWithCapInsets:UIEdgeInsetsMake(20, 20, 20, 20) resizingMode:UIImageResizingModeStretch];
        
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
    _textLabel.frame = CGRectMake(kLeftMargin, kOtherMargin, sizeLable.width, sizeLable.height);
    
    CGFloat imageWidth = size.width;
    
   CGFloat imageHeight = kOtherMargin * 2 + _textLabel.frame.size.height;

    return CGSizeMake(imageWidth, imageHeight);
}







@end
