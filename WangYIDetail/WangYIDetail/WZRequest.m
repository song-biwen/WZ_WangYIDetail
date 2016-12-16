//
//  WZRequest.m
//  WangYiDetail
//
//  Created by songbiwen on 2016/12/16.
//  Copyright © 2016年 songbiwen. All rights reserved.
//

#import "WZRequest.h"

@implementation WZRequest
- (NSString *)requestUrl {
    return @"nc/article/C8DGF22A00038FO9/full.html";
}

- (YTKRequestMethod)requestMethod {
    return YTKRequestMethodGET;
}

- (id)requestArgument {
    return nil;
}
@end
