//
//  Img.m
//
//  Created by   on 2016/12/17
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "Img.h"


NSString *const kImgPixel = @"pixel";
NSString *const kImgPhotosetID = @"photosetID";
NSString *const kImgImgsum = @"imgsum";
NSString *const kImgAlt = @"alt";
NSString *const kImgSrc = @"src";
NSString *const kImgRef = @"ref";


@interface Img ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Img

@synthesize pixel = _pixel;
@synthesize photosetID = _photosetID;
@synthesize imgsum = _imgsum;
@synthesize alt = _alt;
@synthesize src = _src;
@synthesize ref = _ref;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]]) {
            self.pixel = [self objectOrNilForKey:kImgPixel fromDictionary:dict];
            self.photosetID = [self objectOrNilForKey:kImgPhotosetID fromDictionary:dict];
            self.imgsum = [[self objectOrNilForKey:kImgImgsum fromDictionary:dict] doubleValue];
            self.alt = [self objectOrNilForKey:kImgAlt fromDictionary:dict];
            self.src = [self objectOrNilForKey:kImgSrc fromDictionary:dict];
            self.ref = [self objectOrNilForKey:kImgRef fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.pixel forKey:kImgPixel];
    [mutableDict setValue:self.photosetID forKey:kImgPhotosetID];
    [mutableDict setValue:[NSNumber numberWithDouble:self.imgsum] forKey:kImgImgsum];
    [mutableDict setValue:self.alt forKey:kImgAlt];
    [mutableDict setValue:self.src forKey:kImgSrc];
    [mutableDict setValue:self.ref forKey:kImgRef];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description 
{
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict
{
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];

    self.pixel = [aDecoder decodeObjectForKey:kImgPixel];
    self.photosetID = [aDecoder decodeObjectForKey:kImgPhotosetID];
    self.imgsum = [aDecoder decodeDoubleForKey:kImgImgsum];
    self.alt = [aDecoder decodeObjectForKey:kImgAlt];
    self.src = [aDecoder decodeObjectForKey:kImgSrc];
    self.ref = [aDecoder decodeObjectForKey:kImgRef];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_pixel forKey:kImgPixel];
    [aCoder encodeObject:_photosetID forKey:kImgPhotosetID];
    [aCoder encodeDouble:_imgsum forKey:kImgImgsum];
    [aCoder encodeObject:_alt forKey:kImgAlt];
    [aCoder encodeObject:_src forKey:kImgSrc];
    [aCoder encodeObject:_ref forKey:kImgRef];
}

- (id)copyWithZone:(NSZone *)zone
{
    Img *copy = [[Img alloc] init];
    
    if (copy) {

        copy.pixel = [self.pixel copyWithZone:zone];
        copy.photosetID = [self.photosetID copyWithZone:zone];
        copy.imgsum = self.imgsum;
        copy.alt = [self.alt copyWithZone:zone];
        copy.src = [self.src copyWithZone:zone];
        copy.ref = [self.ref copyWithZone:zone];
    }
    
    return copy;
}


@end
