//
//  AutoRetryTaskExecutor.m
//  AutoRetrySample
//
//  Created by 秋元　健太　◇ on 2016/04/03.
//  Copyright © 2016年 秋元　健太. All rights reserved.
//

#import "AutoRetryTaskExecutor.h"

@implementation AutoRetryTaskExecutor

+ (_Nullable id) executeWithAutoRetryTask:(_Nonnull RetryableTaskBlock)task {
    
    BOOL needRetry = NO;
    
    // main task
    id result = task(&needRetry);
    
    if (needRetry) {
        // pre task
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wundeclared-selector"
        if ([self respondsToSelector:@selector(preTask:)]) {
            [self performSelector:@selector(preTask:) withObject:self];
        }
#pragma clang diagnostic pop
        
        // main task
        result = task(&needRetry);
    }
    
    return result;
}

@end
