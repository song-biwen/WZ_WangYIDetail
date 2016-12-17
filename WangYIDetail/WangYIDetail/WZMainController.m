//
//  WZMainController.m
//  WangYiDetail
//
//  Created by songbiwen on 2016/12/16.
//  Copyright © 2016年 songbiwen. All rights reserved.
//

#import "WZMainController.h"
#import "YTKNetwork.h"
#import "WZRequest.h"
#import "DataModels.h"



@interface WZMainController ()
@property (nonatomic, strong) C8DGF22A00038FO9 *dataModel;

@property (nonatomic, strong) UIWebView *webView;

@property (nonatomic, strong) NSDateFormatter *dateFormatter;
@end

@implementation WZMainController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //加载数据
    [self loadData];
}

- (void)loadData {
    WZRequest *api = [[WZRequest alloc] init];
    [api startWithCompletionBlockWithSuccess:^(YTKBaseRequest *request) {
        // 你可以直接在这里使用 self
        self.dataModel = [C8DGF22A00038FO9 modelObjectWithDictionary:request.responseJSONObject[@"C8DGF22A00038FO9"]];
        //数据处理
        [self updateDate];
    } failure:^(YTKBaseRequest *request) {
        // 你可以直接在这里使用 self
        NSLog(@"failed");
    }];
}

//数据处理
- (void)updateDate {
    NSMutableString *htmlStr = [NSMutableString string];
    
    [htmlStr appendString:@"<html lang=\"en\"><head><meta charset=\"UTF-8\">"];
    //导入js、css文件
    NSURL *cssUrl = [[NSBundle mainBundle] URLForResource:@"style.css" withExtension:nil];
    [htmlStr appendString:[NSString stringWithFormat:@"<link href=\"%@\" rel=\"stylesheet\">",cssUrl]];
    [htmlStr appendString:@"</head><body>"];
    
    [htmlStr appendString:[NSString stringWithFormat:@"<div class=\"title_div\">%@</div>",self.dataModel.title]];
    
    NSDate *timeDate = [self.dateFormatter dateFromString:self.dataModel.ptime];
    [self.dateFormatter setDateFormat:@"MM-dd HH:mm"];
    NSString *timeStr = [self.dateFormatter stringFromDate:timeDate];
    
    [htmlStr appendString:[NSString stringWithFormat:@"<div class=\"time_div\">%@ %@</div>",self.dataModel.source,timeStr]];
    NSMutableString *bodyStr = [[NSMutableString alloc] initWithString:self.dataModel.body];
    for (Img *imageModel in self.dataModel.img) {
        NSRange imageRange = [bodyStr rangeOfString:imageModel.ref];
        if (imageRange.location != NSNotFound) {
            NSString *imageStr = [NSString stringWithFormat:@"<img src=\"%@\" alt=\"%@\">",imageModel.src,imageModel.alt];
            [bodyStr replaceCharactersInRange:imageRange withString:imageStr];
        }
    }
    for (Video *videoModel in self.dataModel.video) {
        NSRange videoRange = [bodyStr rangeOfString:videoModel.ref];
        if (videoRange.location != NSNotFound) {
            NSString *videoStr = [NSString stringWithFormat:@"<img src=\"%@\" alt=\"%@\">",videoModel.cover,videoModel.alt];
            [bodyStr replaceCharactersInRange:videoRange withString:videoStr];
        }
    }
    
    [htmlStr appendString:bodyStr];
    
    //导入主体内容
    [htmlStr appendString:@"</body></html>"];
    
    [self.webView loadHTMLString:htmlStr baseURL:nil];
}

- (UIWebView *)webView {
    if (!_webView) {
        _webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
        [self.view addSubview:_webView];
    }
    return _webView;
}

//yyyy-MM-dd HH:mm:ss
- (NSDateFormatter *)dateFormatter {
    if (!_dateFormatter) {
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
        _dateFormatter = formatter;
    }
    return _dateFormatter;
}
@end
