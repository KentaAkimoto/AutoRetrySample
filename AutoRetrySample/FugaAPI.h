//
//  FugaAPI.h
//  AutoRetrySample
//
//  Created by 秋元　健太　◇ on 2016/04/02.
//  Copyright © 2016年 秋元　健太. All rights reserved.
//

#import "BaseAPI.h"

@interface FugaAPI : BaseAPI

@property(strong,nonatomic) NSString *hogeParam;

- (NSArray<NSString*>*) requestAPIWithString:(NSString*)str params:(NSDictionary<NSString*,NSObject*>*)params;

@end
