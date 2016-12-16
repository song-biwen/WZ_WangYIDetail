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


@interface WZMainController ()

@end

@implementation WZMainController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    WZRequest *api = [[WZRequest alloc] init];
    [api startWithCompletionBlockWithSuccess:^(YTKBaseRequest *request) {
        // 你可以直接在这里使用 self
        NSLog(@"succeed");
    } failure:^(YTKBaseRequest *request) {
        // 你可以直接在这里使用 self
        NSLog(@"failed");
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
