//
//  ViewController.m
//  九宫格View
//
//  Created by jiangwei18 on 17/6/7.
//  Copyright © 2017年 jiangwei18. All rights reserved.
//

#import "ViewController.h"
#import "JWApp.h"
#import "JWAppView.h"

@interface ViewController ()

@property(nonatomic, strong)NSMutableArray *infos;

@end

@implementation ViewController

- (NSMutableArray *)infos {
    if (_infos == nil) {
    _infos          = [NSMutableArray new];
    NSString *path  = [[NSBundle mainBundle] pathForResource:@"app" ofType:@".plist"];
        for (NSDictionary* dict in [NSArray arrayWithContentsOfFile:path]) {
    JWApp *app      = [JWApp appWithDict:dict];
            [_infos addObject:app];
        }
    }
    return _infos;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    int rowCount    = 3;
    int appWidth    = 100;
    int appHeight   = 100;
    int xMargin     = (375 - rowCount*appWidth)/(rowCount+1);
    int yMargin     = (375 - rowCount*appHeight)/(rowCount+1);
    NSLog(@"%d", xMargin);
    for (int i      = 0;i<9;i++) {
    JWApp *app      = self.infos[i];
//    UIView *view           = [[UIView alloc]init];
    JWAppView *view = [[NSBundle mainBundle] loadNibNamed:@"JWAppView" owner:nil options:nil][0];
    view.frame      = CGRectMake(xMargin+(i%rowCount)*(xMargin+appWidth), yMargin+(i/rowCount)*(yMargin+appHeight), appWidth, appHeight);
//    view.backgroundColor = [UIColor redColor];
        view.model = app;
        [self.view addSubview:view];


    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
