//
//  JWApp.m
//  九宫格View
//
//  Created by jiangwei18 on 17/6/7.
//  Copyright © 2017年 jiangwei18. All rights reserved.
//

#import "JWApp.h"

@implementation JWApp
- (instancetype)initWithDict:(NSDictionary*)dict{
    if ([self init]) {
        self.icon = dict[@"icon"];
        self.name = dict[@"name"];
    }
    return self;
}

+ (instancetype)appWithDict:(NSDictionary*)dict{
    JWApp *app = [[JWApp alloc]initWithDict:dict];
    return app;
}
@end
