//
//  FugaAPI.m
//  AutoRetrySample
//
//  Created by 秋元　健太　◇ on 2016/04/02.
//  Copyright © 2016年 秋元　健太. All rights reserved.
//

#import "FugaAPI.h"
#import "AutoRetryTaskExecutor.h"

@implementation FugaAPI

// 外から見えるメソッドは、インターフェースを変更しない
- (NSArray<NSString*>*) requestAPIWithString:(NSString*)str params:(NSDictionary<NSString*,NSObject*>*)params {

    // リトライ機構を持たせるために、AutoRetryTaskExecutorを使って、本体処理を実行する
    // blockには、本体処理であるプライベートメソッドの呼び出しと、リトライ要否を判断する処理を持たせる
    NSArray<NSString*>* result = [AutoRetryTaskExecutor executeWithAutoRetryTask:^NSArray<NSString*>* _Nullable(BOOL * _Nonnull needRetry) {

        // 本体処理の呼び出し
        NSArray<NSString*>* result = [self _requestAPIWithString:str params:params];
        
        // セッション切れ等でエラーだった場合リトライする分岐処理　この判定はAPIごとに違うはず
        // 戻り値で判定できる場合は、このようにすればOK. 引数に渡すNSErrorから判定するケースもありそう
        // 判定できる要素がないならば、本体処理のプライベートメソッドにneedRetryを引数に追加してもよさそう
        if ([result[0] isEqualToString:@"invalid_session"]) {
            *needRetry = YES; // リトライが必要なときは、YESにする
        }
        return result;
        
    }];

    return result;
}

// 本体処理は、プライベートな同名メソッドへ
- (NSArray<NSString*>*) _requestAPIWithString:(NSString*)str params:(NSDictionary<NSString*,NSObject*>*)params {
    
    NSLog(@"%@ @ %@ start", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    
    [self.hogeParam stringByAppendingString:@"hoge"]; // プロパティは内部で使っていれば特に問題なし
    
    [NSThread sleepForTimeInterval:1.0f];
//    NSArray<NSString*> *result = @[@"valid_session"];
    NSArray<NSString*> *result = @[@"invalid_session"];
    
    NSLog(@"%@ @ %@ end", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    
    return result;
}


@end
