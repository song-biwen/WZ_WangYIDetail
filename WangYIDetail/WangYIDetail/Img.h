//
//  Img.h
//
//  Created by   on 2016/12/17
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Img : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *pixel;
@property (nonatomic, strong) NSString *photosetID;
@property (nonatomic, assign) double imgsum;
@property (nonatomic, strong) NSString *alt;
@property (nonatomic, strong) NSString *src;
@property (nonatomic, strong) NSString *ref;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
