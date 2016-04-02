//
//  AutoRetryTaskExecutor.h
//  AutoRetrySample
//
//  Created by 秋元　健太　◇ on 2016/04/03.
//  Copyright © 2016年 秋元　健太. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AutoRetryTaskExecutor<ObjectType> : NSObject

typedef _Nullable ObjectType (^RetryableTaskBlock)(BOOL * _Nonnull needRetry);

+ (_Nullable ObjectType) executeWithAutoRetryTask:(_Nonnull RetryableTaskBlock)task;


@end
