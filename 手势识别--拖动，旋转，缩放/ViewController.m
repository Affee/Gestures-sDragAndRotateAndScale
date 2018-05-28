//
//  ViewController.m
//  手势识别--拖动，旋转，缩放
//
//  Created by Affee on 2017/11/7.
//  Copyright © 2017年 affee. All rights reserved.
//

#import "ViewController.h"
#import "ChatBubble.h"
#import "StickerView.h"
#import "ChatBubbleView.h"
@interface ViewController ()<UIGestureRecognizerDelegate,UITextFieldDelegate>

@property(nonatomic,strong)StickerView *QiPaoView;

@property(nonatomic,strong)UITextField *text_field;

@property(nonatomic,strong)ChatBubble *bubble;

@property(nonatomic,strong)ChatBubbleView *TwoBubbleView;

@property(nonatomic,strong)UILabel *textLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
    _QiPaoView = [[StickerView alloc]initWithImage:[UIImage imageNamed:@"资源 10.png"]];
    _QiPaoView.center = CGPointMake(self.view.width/2, self.view.height/2);
    
    _textLabel = [[UILabel alloc]init];
    _textLabel.text = @"jasjldjalkd";
    _textLabel.backgroundColor = [UIColor orangeColor];
    [_textLabel sizeThatFits:CGSizeMake(100, 100)];
    [_textLabel sizeToFit];
    _textLabel.frame    = CGRectMake(0.5*_QiPaoView.width, 0.5*_QiPaoView.height, 100,100);
    _textLabel.center = _QiPaoView.center;
    [_textLabel layoutIfNeeded];
    [_textLabel setBackgroundColor:[UIColor colorWithRed:(66/255.f) green:(67/255.f) blue:(63/255.f)  alpha:1]];
    _textLabel.userInteractionEnabled = YES;
    [_QiPaoView addSubview:_textLabel];
    
  
//    _QiPaoView.textLabel.text = @"sdhuoashdasjdaskjdas";
    
    [self.view addSubview:_QiPaoView];

    
}
-(CGSize)sizeThatFits:(CGSize)size
{
    CGFloat width = size.width - 10-20;
    CGSize sizeLable = [_textLabel sizeThatFits:CGSizeMake(width, MAXFLOAT)];
    _textLabel.frame = CGRectMake(10, 20, sizeLable.width, sizeLable.height);
    
    CGFloat imageWidth = size.width;
    
    CGFloat imageHeight = 10 * 2 + _textLabel.frame.size.height;
    
    return CGSizeMake(imageWidth, imageHeight);
}


//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"我是标题" message:@"我是传递的消息正文" delegate:self cancelButtonTitle:@"取消按钮" otherButtonTitles:@"确定按钮", nil];
//    alertView.alertViewStyle = UIAlertViewStylePlainTextInput;
//    [alertView show];
////    _text_field.placeholder = _text_field.text;
//
//    [[alertView textFieldAtIndex:0] setDelegate:self];
//}
//
//- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
//{
//    UITextField *text_field = [alertView textFieldAtIndex:0];
//
//    if (buttonIndex == 1) {
//        NSLog(@"text: %@", text_field.text);
//    }
//    _bubble.text = text_field.text;
//}

@end
