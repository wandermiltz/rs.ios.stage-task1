#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    
    NSMutableArray *reversedArray = [NSMutableArray new];

    if (number == nil) {
        return @[];
    }
    int unsignedNumber = [number intValue];

     if (unsignedNumber < 0) {
         unsignedNumber = -unsignedNumber;
     }
    
    while(unsignedNumber) {
        int remainder = unsignedNumber % 10;
        [reversedArray addObject:[NSString stringWithFormat:@"%u", remainder]];
        unsignedNumber = (unsignedNumber - remainder) / 10;
    }
    
    return reversedArray;
}

@end
