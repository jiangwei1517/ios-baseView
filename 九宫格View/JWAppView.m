//
//  JWAppView.m
//  九宫格View
//
//  Created by jiangwei18 on 17/6/7.
//  Copyright © 2017年 jiangwei18. All rights reserved.
//

#import "JWAppView.h"

@interface JWAppView ()

@property (weak, nonatomic) IBOutlet UIImageView *iv;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *btn;
- (IBAction)btnClick:(UIButton *)sender;

@end
@implementation JWAppView
- (void)setModel:(JWApp *)model{
    self.iv.image         = [UIImage imageNamed:model.icon];
    self.label.text       = model.name;

    [self.btn setBackgroundImage:[UIImage imageNamed:@"buttongreen"] forState:UIControlStateNormal];
    [self.btn setBackgroundImage:[UIImage imageNamed:@"buttongreen_highlighted"] forState:UIControlStateHighlighted];

    [self.btn setTitle:@"下载" forState:UIControlStateNormal];
    [self.btn setTitle:@"下载中" forState:UIControlStateDisabled];
}

/**
 *  点击下载按钮
 *
 *  @param sender <#sender description#>
 */
- (IBAction)btnClick:(UIButton *)sender {
    NSLog(@"显示label");
    self.btn.enabled = NO;
    UILabel *toast        = [UILabel new];
    toast.backgroundColor = [UIColor redColor];
    toast.alpha           = 0.0;
    toast.text            = @"正在下载。。。";
    toast.font            = [UIFont systemFontOfSize:14];
    toast.layer.cornerRadius = 10;
    toast.layer.masksToBounds = YES;
    toast.frame           = CGRectMake((self.superview.frame.size.width-200)/2, (self.superview.frame.size.height-30)/2, 200, 30);
    [UIView animateWithDuration:1 animations:^{
    toast.alpha           = 0.6;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1 delay:1.5 options:UIViewAnimationOptionCurveLinear animations:^{
               toast.alpha           = 0.0;
        } completion:^(BOOL finished) {
            [self.btn setTitle:@"下载完成" forState:UIControlStateDisabled];
        }];
    }];
     [self.superview addSubview:toast];
}
@end
