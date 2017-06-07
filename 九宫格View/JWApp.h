//
//  JWApp.h
//  九宫格View
//
//  Created by jiangwei18 on 17/6/7.
//  Copyright © 2017年 jiangwei18. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JWApp : NSObject
@property(nonatomic,copy)NSString *icon;
@property(nonatomic,copy)NSString *name;

- (instancetype)initWithDict:(NSDictionary*)dict;

+ (instancetype)appWithDict:(NSDictionary*)dict;
@end
