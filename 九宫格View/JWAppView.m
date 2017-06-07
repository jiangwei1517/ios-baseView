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

@end
@implementation JWAppView
- (void)setModel:(JWApp *)model{
    self.iv.image = [UIImage imageNamed:model.icon];
    self.label.text = model.name;
}
@end
