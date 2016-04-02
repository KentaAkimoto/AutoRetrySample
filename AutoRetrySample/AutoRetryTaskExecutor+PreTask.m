//
//  AutoRetryTaskExecutor+PreTask.m
//  AutoRetrySample
//
//  Created by 秋元　健太　◇ on 2016/04/03.
//  Copyright © 2016年 秋元　健太. All rights reserved.
//

#import "AutoRetryTaskExecutor+PreTask.h"

@implementation AutoRetryTaskExecutor (PreTask)

+ (BOOL) preTask:(id)sender {
    // ここでrelogin処理など行う
    NSLog(@"%@ @ %@ start", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    NSLog(@"%@ @ %@ end", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    return YES;
}

@end
