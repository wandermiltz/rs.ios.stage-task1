#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    
    NSInteger leftIndex = 0;
    NSInteger rightIndex = [self count] - 1;
    
    if ([self count] == 0) {
        return nil;
    }
    
    if ([self[0] intValue] < [self[rightIndex] intValue] || [self count] == 1) {
        return self[0];
    }
    
    while(leftIndex <= rightIndex) {
        
        NSInteger midIndex = (rightIndex + leftIndex) / 2;
        NSInteger midValue = [self[midIndex] intValue];

            if (midValue > [self[midIndex + 1] intValue]) {
                return self[midIndex + 1];
            }
            
            if (midValue < [self[midIndex - 1] intValue]) {
                return self[midIndex];
            }
            
            if(midValue > [self[0] intValue]) {
                leftIndex = midIndex + 1;
                
            } else {
                rightIndex = midIndex - 1;
            }
    }
    
    return nil;
}

@end
