//
//  ViewController.m
//  AutoRetrySample
//
//  Created by 秋元　健太　◇ on 2016/04/02.
//  Copyright © 2016年 秋元　健太. All rights reserved.
//

#import "ViewController.h"
#import "BaseAPI.h"
//#import "BaseAPI+BaseAPI_AutoRetry.h"
#import "HogeAPI.h"
#import "FugaAPI.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    
//普通のAPI呼び出し
//    HogeAPI *hogeAPI = [[HogeAPI alloc] init];
//    [hogeAPI requestAPIWithString:@"paramStr" params:@{@"key1":@(200)}];

//    int i = 0;
//    while (i < 3) {
//        
//        // API利用側は、retry処理の存在を気づかない、意識しない
//        FugaAPI *fugaAPI = [[FugaAPI alloc] init];
//        fugaAPI.hogeParam = @"hoge";
//        NSArray* result = [fugaAPI requestAPIWithString:@"paramStr" params:@{@"key1":@(200)}];
//        
//        NSLog(@"処理結果 %@", result);
//        i++;
//    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
