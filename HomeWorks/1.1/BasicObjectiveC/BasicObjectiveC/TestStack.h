#import <Foundation/Foundation.h>

@interface TestStack : NSObject

- (void)push:(id)object;
- (id)pop;
- (NSInteger)size;

@end
