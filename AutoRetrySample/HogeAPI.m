//
//  HogeAPI.m
//  AutoRetrySample
//
//  Created by 秋元　健太　◇ on 2016/04/02.
//  Copyright © 2016年 秋元　健太. All rights reserved.
//

#import "HogeAPI.h"

@implementation HogeAPI

- (NSArray<NSString*>*) requestAPIWithString:(NSString*)str params:(NSDictionary<NSString*,NSObject*>*)params {
    
    NSLog(@"%@ @ %@ start", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    [NSThread sleepForTimeInterval:1.0f];
    NSLog(@"%@ @ %@ end", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    
    NSArray<NSString*> *result = @[@"result"];
    return result;
}

@end
