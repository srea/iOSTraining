#import "TestStack.h"

@interface TestStack ()
@property (nonatomic, strong) NSMutableArray *stack;
@end

@implementation TestStack


- (instancetype)init
{
    if (self = [super init]) {
        // 空の配列を生成する
        _stack = @[].mutableCopy;
    }
    return self;
}

- (void)push:(id)object
{
    // オブジェクトを追加する
    [_stack addObject:object];
}

- (id)pop
{
    if (_stack.count) {
        NSInteger count = _stack.count;
        id object = _stack[count - 1];
        [_stack removeObject:object];
        return object;
    } else {
        return nil;
    }
}

- (NSInteger)size
{
    return _stack.count;
}

@end
