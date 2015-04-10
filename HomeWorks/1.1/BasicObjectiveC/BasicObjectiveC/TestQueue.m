#import "TestQueue.h"

@interface TestQueue ()
@property (nonatomic, strong) NSMutableArray *queue;
@end

@implementation TestQueue

- (instancetype)init
{
    if (self = [super init]) {
        // 空の配列を生成する
        _queue = [NSMutableArray array];
//        _queue = @[].mutableCopy; // こういう書き方も出来る
    }
    return self;
}

- (void)push:(id)object
{
    // オブジェクトを追加する
    [_queue addObject:object];
}

- (id)pop
{
    if (_queue.count) {
        id object = _queue[0];
        [_queue removeObject:object];
        return object;
    } else {
        return nil;
    }
}

- (NSInteger)size
{
    return _queue.count;
}

@end
