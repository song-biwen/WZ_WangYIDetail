//
//  C8DGF22A00038FO9.m
//
//  Created by   on 2016/12/17
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "C8DGF22A00038FO9.h"
#import "Img.h"
#import "TopiclistNews.h"
#import "Video.h"
#import "RelativeSys.h"


NSString *const kC8DGF22A00038FO9Ptime = @"ptime";
NSString *const kC8DGF22A00038FO9Source = @"source";
NSString *const kC8DGF22A00038FO9Ec = @"ec";
NSString *const kC8DGF22A00038FO9Link = @"link";
NSString *const kC8DGF22A00038FO9Title = @"title";
NSString *const kC8DGF22A00038FO9Tid = @"tid";
NSString *const kC8DGF22A00038FO9BoboList = @"boboList";
NSString *const kC8DGF22A00038FO9Img = @"img";
NSString *const kC8DGF22A00038FO9TopiclistNews = @"topiclist_news";
NSString *const kC8DGF22A00038FO9HasNext = @"hasNext";
NSString *const kC8DGF22A00038FO9Template = @"template";
NSString *const kC8DGF22A00038FO9Picnews = @"picnews";
NSString *const kC8DGF22A00038FO9Docid = @"docid";
NSString *const kC8DGF22A00038FO9ReplyBoard = @"replyBoard";
NSString *const kC8DGF22A00038FO9Ydbaike = @"ydbaike";
NSString *const kC8DGF22A00038FO9ReplyCount = @"replyCount";
NSString *const kC8DGF22A00038FO9Video = @"video";
NSString *const kC8DGF22A00038FO9Topiclist = @"topiclist";
NSString *const kC8DGF22A00038FO9Body = @"body";
NSString *const kC8DGF22A00038FO9ThreadAgainst = @"threadAgainst";
NSString *const kC8DGF22A00038FO9Votes = @"votes";
NSString *const kC8DGF22A00038FO9Voicecomment = @"voicecomment";
NSString *const kC8DGF22A00038FO9Dkeys = @"dkeys";
NSString *const kC8DGF22A00038FO9ShareLink = @"shareLink";
NSString *const kC8DGF22A00038FO9Users = @"users";
NSString *const kC8DGF22A00038FO9ThreadVote = @"threadVote";
NSString *const kC8DGF22A00038FO9RelativeSys = @"relative_sys";
NSString *const kC8DGF22A00038FO9Digest = @"digest";


@interface C8DGF22A00038FO9 ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation C8DGF22A00038FO9

@synthesize ptime = _ptime;
@synthesize source = _source;
@synthesize ec = _ec;
@synthesize link = _link;
@synthesize title = _title;
@synthesize tid = _tid;
@synthesize boboList = _boboList;
@synthesize img = _img;
@synthesize topiclistNews = _topiclistNews;
@synthesize hasNext = _hasNext;
@synthesize template = _template;
@synthesize picnews = _picnews;
@synthesize docid = _docid;
@synthesize replyBoard = _replyBoard;
@synthesize ydbaike = _ydbaike;
@synthesize replyCount = _replyCount;
@synthesize video = _video;
@synthesize topiclist = _topiclist;
@synthesize body = _body;
@synthesize threadAgainst = _threadAgainst;
@synthesize votes = _votes;
@synthesize voicecomment = _voicecomment;
@synthesize dkeys = _dkeys;
@synthesize shareLink = _shareLink;
@synthesize users = _users;
@synthesize threadVote = _threadVote;
@synthesize relativeSys = _relativeSys;
@synthesize digest = _digest;


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
            self.ptime = [self objectOrNilForKey:kC8DGF22A00038FO9Ptime fromDictionary:dict];
            self.source = [self objectOrNilForKey:kC8DGF22A00038FO9Source fromDictionary:dict];
            self.ec = [self objectOrNilForKey:kC8DGF22A00038FO9Ec fromDictionary:dict];
            self.link = [self objectOrNilForKey:kC8DGF22A00038FO9Link fromDictionary:dict];
            self.title = [self objectOrNilForKey:kC8DGF22A00038FO9Title fromDictionary:dict];
            self.tid = [self objectOrNilForKey:kC8DGF22A00038FO9Tid fromDictionary:dict];
            self.boboList = [self objectOrNilForKey:kC8DGF22A00038FO9BoboList fromDictionary:dict];
    NSObject *receivedImg = [dict objectForKey:kC8DGF22A00038FO9Img];
    NSMutableArray *parsedImg = [NSMutableArray array];
    if ([receivedImg isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedImg) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedImg addObject:[Img modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedImg isKindOfClass:[NSDictionary class]]) {
       [parsedImg addObject:[Img modelObjectWithDictionary:(NSDictionary *)receivedImg]];
    }

    self.img = [NSArray arrayWithArray:parsedImg];
    NSObject *receivedTopiclistNews = [dict objectForKey:kC8DGF22A00038FO9TopiclistNews];
    NSMutableArray *parsedTopiclistNews = [NSMutableArray array];
    if ([receivedTopiclistNews isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedTopiclistNews) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedTopiclistNews addObject:[TopiclistNews modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedTopiclistNews isKindOfClass:[NSDictionary class]]) {
       [parsedTopiclistNews addObject:[TopiclistNews modelObjectWithDictionary:(NSDictionary *)receivedTopiclistNews]];
    }

    self.topiclistNews = [NSArray arrayWithArray:parsedTopiclistNews];
            self.hasNext = [[self objectOrNilForKey:kC8DGF22A00038FO9HasNext fromDictionary:dict] boolValue];
            self.template = [self objectOrNilForKey:kC8DGF22A00038FO9Template fromDictionary:dict];
            self.picnews = [[self objectOrNilForKey:kC8DGF22A00038FO9Picnews fromDictionary:dict] boolValue];
            self.docid = [self objectOrNilForKey:kC8DGF22A00038FO9Docid fromDictionary:dict];
            self.replyBoard = [self objectOrNilForKey:kC8DGF22A00038FO9ReplyBoard fromDictionary:dict];
            self.ydbaike = [self objectOrNilForKey:kC8DGF22A00038FO9Ydbaike fromDictionary:dict];
            self.replyCount = [[self objectOrNilForKey:kC8DGF22A00038FO9ReplyCount fromDictionary:dict] doubleValue];
    NSObject *receivedVideo = [dict objectForKey:kC8DGF22A00038FO9Video];
    NSMutableArray *parsedVideo = [NSMutableArray array];
    if ([receivedVideo isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedVideo) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedVideo addObject:[Video modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedVideo isKindOfClass:[NSDictionary class]]) {
       [parsedVideo addObject:[Video modelObjectWithDictionary:(NSDictionary *)receivedVideo]];
    }

    self.video = [NSArray arrayWithArray:parsedVideo];
            self.topiclist = [self objectOrNilForKey:kC8DGF22A00038FO9Topiclist fromDictionary:dict];
            self.body = [self objectOrNilForKey:kC8DGF22A00038FO9Body fromDictionary:dict];
            self.threadAgainst = [[self objectOrNilForKey:kC8DGF22A00038FO9ThreadAgainst fromDictionary:dict] doubleValue];
            self.votes = [self objectOrNilForKey:kC8DGF22A00038FO9Votes fromDictionary:dict];
            self.voicecomment = [self objectOrNilForKey:kC8DGF22A00038FO9Voicecomment fromDictionary:dict];
            self.dkeys = [self objectOrNilForKey:kC8DGF22A00038FO9Dkeys fromDictionary:dict];
            self.shareLink = [self objectOrNilForKey:kC8DGF22A00038FO9ShareLink fromDictionary:dict];
            self.users = [self objectOrNilForKey:kC8DGF22A00038FO9Users fromDictionary:dict];
            self.threadVote = [[self objectOrNilForKey:kC8DGF22A00038FO9ThreadVote fromDictionary:dict] doubleValue];
    NSObject *receivedRelativeSys = [dict objectForKey:kC8DGF22A00038FO9RelativeSys];
    NSMutableArray *parsedRelativeSys = [NSMutableArray array];
    if ([receivedRelativeSys isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedRelativeSys) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedRelativeSys addObject:[RelativeSys modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedRelativeSys isKindOfClass:[NSDictionary class]]) {
       [parsedRelativeSys addObject:[RelativeSys modelObjectWithDictionary:(NSDictionary *)receivedRelativeSys]];
    }

    self.relativeSys = [NSArray arrayWithArray:parsedRelativeSys];
            self.digest = [self objectOrNilForKey:kC8DGF22A00038FO9Digest fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.ptime forKey:kC8DGF22A00038FO9Ptime];
    [mutableDict setValue:self.source forKey:kC8DGF22A00038FO9Source];
    [mutableDict setValue:self.ec forKey:kC8DGF22A00038FO9Ec];
    NSMutableArray *tempArrayForLink = [NSMutableArray array];
    for (NSObject *subArrayObject in self.link) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForLink addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForLink addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForLink] forKey:kC8DGF22A00038FO9Link];
    [mutableDict setValue:self.title forKey:kC8DGF22A00038FO9Title];
    [mutableDict setValue:self.tid forKey:kC8DGF22A00038FO9Tid];
    NSMutableArray *tempArrayForBoboList = [NSMutableArray array];
    for (NSObject *subArrayObject in self.boboList) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForBoboList addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForBoboList addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForBoboList] forKey:kC8DGF22A00038FO9BoboList];
    NSMutableArray *tempArrayForImg = [NSMutableArray array];
    for (NSObject *subArrayObject in self.img) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForImg addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForImg addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForImg] forKey:kC8DGF22A00038FO9Img];
    NSMutableArray *tempArrayForTopiclistNews = [NSMutableArray array];
    for (NSObject *subArrayObject in self.topiclistNews) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForTopiclistNews addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForTopiclistNews addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForTopiclistNews] forKey:kC8DGF22A00038FO9TopiclistNews];
    [mutableDict setValue:[NSNumber numberWithBool:self.hasNext] forKey:kC8DGF22A00038FO9HasNext];
    [mutableDict setValue:self.template forKey:kC8DGF22A00038FO9Template];
    [mutableDict setValue:[NSNumber numberWithBool:self.picnews] forKey:kC8DGF22A00038FO9Picnews];
    [mutableDict setValue:self.docid forKey:kC8DGF22A00038FO9Docid];
    [mutableDict setValue:self.replyBoard forKey:kC8DGF22A00038FO9ReplyBoard];
    NSMutableArray *tempArrayForYdbaike = [NSMutableArray array];
    for (NSObject *subArrayObject in self.ydbaike) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForYdbaike addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForYdbaike addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForYdbaike] forKey:kC8DGF22A00038FO9Ydbaike];
    [mutableDict setValue:[NSNumber numberWithDouble:self.replyCount] forKey:kC8DGF22A00038FO9ReplyCount];
    NSMutableArray *tempArrayForVideo = [NSMutableArray array];
    for (NSObject *subArrayObject in self.video) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForVideo addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForVideo addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForVideo] forKey:kC8DGF22A00038FO9Video];
    NSMutableArray *tempArrayForTopiclist = [NSMutableArray array];
    for (NSObject *subArrayObject in self.topiclist) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForTopiclist addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForTopiclist addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForTopiclist] forKey:kC8DGF22A00038FO9Topiclist];
    [mutableDict setValue:self.body forKey:kC8DGF22A00038FO9Body];
    [mutableDict setValue:[NSNumber numberWithDouble:self.threadAgainst] forKey:kC8DGF22A00038FO9ThreadAgainst];
    NSMutableArray *tempArrayForVotes = [NSMutableArray array];
    for (NSObject *subArrayObject in self.votes) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForVotes addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForVotes addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForVotes] forKey:kC8DGF22A00038FO9Votes];
    [mutableDict setValue:self.voicecomment forKey:kC8DGF22A00038FO9Voicecomment];
    [mutableDict setValue:self.dkeys forKey:kC8DGF22A00038FO9Dkeys];
    [mutableDict setValue:self.shareLink forKey:kC8DGF22A00038FO9ShareLink];
    NSMutableArray *tempArrayForUsers = [NSMutableArray array];
    for (NSObject *subArrayObject in self.users) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForUsers addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForUsers addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForUsers] forKey:kC8DGF22A00038FO9Users];
    [mutableDict setValue:[NSNumber numberWithDouble:self.threadVote] forKey:kC8DGF22A00038FO9ThreadVote];
    NSMutableArray *tempArrayForRelativeSys = [NSMutableArray array];
    for (NSObject *subArrayObject in self.relativeSys) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForRelativeSys addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForRelativeSys addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForRelativeSys] forKey:kC8DGF22A00038FO9RelativeSys];
    [mutableDict setValue:self.digest forKey:kC8DGF22A00038FO9Digest];

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

    self.ptime = [aDecoder decodeObjectForKey:kC8DGF22A00038FO9Ptime];
    self.source = [aDecoder decodeObjectForKey:kC8DGF22A00038FO9Source];
    self.ec = [aDecoder decodeObjectForKey:kC8DGF22A00038FO9Ec];
    self.link = [aDecoder decodeObjectForKey:kC8DGF22A00038FO9Link];
    self.title = [aDecoder decodeObjectForKey:kC8DGF22A00038FO9Title];
    self.tid = [aDecoder decodeObjectForKey:kC8DGF22A00038FO9Tid];
    self.boboList = [aDecoder decodeObjectForKey:kC8DGF22A00038FO9BoboList];
    self.img = [aDecoder decodeObjectForKey:kC8DGF22A00038FO9Img];
    self.topiclistNews = [aDecoder decodeObjectForKey:kC8DGF22A00038FO9TopiclistNews];
    self.hasNext = [aDecoder decodeBoolForKey:kC8DGF22A00038FO9HasNext];
    self.template = [aDecoder decodeObjectForKey:kC8DGF22A00038FO9Template];
    self.picnews = [aDecoder decodeBoolForKey:kC8DGF22A00038FO9Picnews];
    self.docid = [aDecoder decodeObjectForKey:kC8DGF22A00038FO9Docid];
    self.replyBoard = [aDecoder decodeObjectForKey:kC8DGF22A00038FO9ReplyBoard];
    self.ydbaike = [aDecoder decodeObjectForKey:kC8DGF22A00038FO9Ydbaike];
    self.replyCount = [aDecoder decodeDoubleForKey:kC8DGF22A00038FO9ReplyCount];
    self.video = [aDecoder decodeObjectForKey:kC8DGF22A00038FO9Video];
    self.topiclist = [aDecoder decodeObjectForKey:kC8DGF22A00038FO9Topiclist];
    self.body = [aDecoder decodeObjectForKey:kC8DGF22A00038FO9Body];
    self.threadAgainst = [aDecoder decodeDoubleForKey:kC8DGF22A00038FO9ThreadAgainst];
    self.votes = [aDecoder decodeObjectForKey:kC8DGF22A00038FO9Votes];
    self.voicecomment = [aDecoder decodeObjectForKey:kC8DGF22A00038FO9Voicecomment];
    self.dkeys = [aDecoder decodeObjectForKey:kC8DGF22A00038FO9Dkeys];
    self.shareLink = [aDecoder decodeObjectForKey:kC8DGF22A00038FO9ShareLink];
    self.users = [aDecoder decodeObjectForKey:kC8DGF22A00038FO9Users];
    self.threadVote = [aDecoder decodeDoubleForKey:kC8DGF22A00038FO9ThreadVote];
    self.relativeSys = [aDecoder decodeObjectForKey:kC8DGF22A00038FO9RelativeSys];
    self.digest = [aDecoder decodeObjectForKey:kC8DGF22A00038FO9Digest];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_ptime forKey:kC8DGF22A00038FO9Ptime];
    [aCoder encodeObject:_source forKey:kC8DGF22A00038FO9Source];
    [aCoder encodeObject:_ec forKey:kC8DGF22A00038FO9Ec];
    [aCoder encodeObject:_link forKey:kC8DGF22A00038FO9Link];
    [aCoder encodeObject:_title forKey:kC8DGF22A00038FO9Title];
    [aCoder encodeObject:_tid forKey:kC8DGF22A00038FO9Tid];
    [aCoder encodeObject:_boboList forKey:kC8DGF22A00038FO9BoboList];
    [aCoder encodeObject:_img forKey:kC8DGF22A00038FO9Img];
    [aCoder encodeObject:_topiclistNews forKey:kC8DGF22A00038FO9TopiclistNews];
    [aCoder encodeBool:_hasNext forKey:kC8DGF22A00038FO9HasNext];
    [aCoder encodeObject:_template forKey:kC8DGF22A00038FO9Template];
    [aCoder encodeBool:_picnews forKey:kC8DGF22A00038FO9Picnews];
    [aCoder encodeObject:_docid forKey:kC8DGF22A00038FO9Docid];
    [aCoder encodeObject:_replyBoard forKey:kC8DGF22A00038FO9ReplyBoard];
    [aCoder encodeObject:_ydbaike forKey:kC8DGF22A00038FO9Ydbaike];
    [aCoder encodeDouble:_replyCount forKey:kC8DGF22A00038FO9ReplyCount];
    [aCoder encodeObject:_video forKey:kC8DGF22A00038FO9Video];
    [aCoder encodeObject:_topiclist forKey:kC8DGF22A00038FO9Topiclist];
    [aCoder encodeObject:_body forKey:kC8DGF22A00038FO9Body];
    [aCoder encodeDouble:_threadAgainst forKey:kC8DGF22A00038FO9ThreadAgainst];
    [aCoder encodeObject:_votes forKey:kC8DGF22A00038FO9Votes];
    [aCoder encodeObject:_voicecomment forKey:kC8DGF22A00038FO9Voicecomment];
    [aCoder encodeObject:_dkeys forKey:kC8DGF22A00038FO9Dkeys];
    [aCoder encodeObject:_shareLink forKey:kC8DGF22A00038FO9ShareLink];
    [aCoder encodeObject:_users forKey:kC8DGF22A00038FO9Users];
    [aCoder encodeDouble:_threadVote forKey:kC8DGF22A00038FO9ThreadVote];
    [aCoder encodeObject:_relativeSys forKey:kC8DGF22A00038FO9RelativeSys];
    [aCoder encodeObject:_digest forKey:kC8DGF22A00038FO9Digest];
}

- (id)copyWithZone:(NSZone *)zone
{
    C8DGF22A00038FO9 *copy = [[C8DGF22A00038FO9 alloc] init];
    
    if (copy) {

        copy.ptime = [self.ptime copyWithZone:zone];
        copy.source = [self.source copyWithZone:zone];
        copy.ec = [self.ec copyWithZone:zone];
        copy.link = [self.link copyWithZone:zone];
        copy.title = [self.title copyWithZone:zone];
        copy.tid = [self.tid copyWithZone:zone];
        copy.boboList = [self.boboList copyWithZone:zone];
        copy.img = [self.img copyWithZone:zone];
        copy.topiclistNews = [self.topiclistNews copyWithZone:zone];
        copy.hasNext = self.hasNext;
        copy.template = [self.template copyWithZone:zone];
        copy.picnews = self.picnews;
        copy.docid = [self.docid copyWithZone:zone];
        copy.replyBoard = [self.replyBoard copyWithZone:zone];
        copy.ydbaike = [self.ydbaike copyWithZone:zone];
        copy.replyCount = self.replyCount;
        copy.video = [self.video copyWithZone:zone];
        copy.topiclist = [self.topiclist copyWithZone:zone];
        copy.body = [self.body copyWithZone:zone];
        copy.threadAgainst = self.threadAgainst;
        copy.votes = [self.votes copyWithZone:zone];
        copy.voicecomment = [self.voicecomment copyWithZone:zone];
        copy.dkeys = [self.dkeys copyWithZone:zone];
        copy.shareLink = [self.shareLink copyWithZone:zone];
        copy.users = [self.users copyWithZone:zone];
        copy.threadVote = self.threadVote;
        copy.relativeSys = [self.relativeSys copyWithZone:zone];
        copy.digest = [self.digest copyWithZone:zone];
    }
    
    return copy;
}


@end
