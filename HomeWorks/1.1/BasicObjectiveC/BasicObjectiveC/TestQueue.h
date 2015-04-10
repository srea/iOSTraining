#import <Foundation/Foundation.h>

@interface TestQueue : NSObject

- (void)push:(id)object;
- (id)pop;
- (NSInteger)size;

@end
