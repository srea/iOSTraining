//
//  ViewController.m
//  BasicObjectiveC
//
//  Created by 武田 祐一 on 2013/04/16.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "ViewController.h"
#import "TestQueue.h"
#import "TestStack.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // TODO ここに課題を書き進めていってください
    NSArray *data = @[
                      @{
                          @"domain" : @"mixi.jp",
                          @"entry" : @[
                                  @"list_voice.pl",
                                  @"list_diary",
                                  @"list_mymall_item",
                                  ],
                          },
                      @{
                          @"domain" : @"mmall.jp",
                          @"entry" : @[
                                  @{
                                  @"path" : @"add_diary",
                                  @"query" : @[
                                          @{
                                              @"tag_id" : @(7),
                                              }
                                          ],
                                      }
                                  ],
                          },
                      @{
                          @"domain" : @"itunes.apple.com",
                          }
                      ];
    NSLog(@"\n%@", data);

    // 課題２
    NSLog(@"========================");
    TestQueue *queue = [[TestQueue alloc] init];
    NSLog(@"queue size: %ld件", [queue size]);
    [queue push:@"1"];
    [queue push:@"2"];
    [queue push:@"3"];
    NSLog(@"queue size: %ld", [queue size]);
    NSLog(@"%@", [queue pop]);
    NSLog(@"%@", [queue pop]);
    NSLog(@"%@", [queue pop]);
    NSLog(@"queue size: %ld", [queue size]);
    NSLog(@"%@", [queue pop]); // sizeが0でpopを呼んでも落ちないほうが良い
    NSLog(@"========================");
    TestStack *stack = [[TestStack alloc] init];
    NSLog(@"stack size: %ld", [stack size]);
    [stack push:@"1"];
    [stack push:@"2"];
    [stack push:@"3"];
    NSLog(@"stack size: %ld", [stack size]);
    NSLog(@"%@", [stack pop]);
    NSLog(@"%@", [stack pop]);
    NSLog(@"%@", [stack pop]);
    NSLog(@"stack size: %ld", [stack size]);
    NSLog(@"%@", [stack pop]); // sizeが0でpopを呼んでも落ちないほうが良い
    NSLog(@"========================");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
