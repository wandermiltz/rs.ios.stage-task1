#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    
    NSMutableArray *resultArray = [NSMutableArray new];

    if (number == nil) {
        return @[];
    }
    int unsignedNumber = [number intValue];

     if (unsignedNumber < 0) {
         unsignedNumber = -unsignedNumber;
     }
    
    while(unsignedNumber) {
        int decimalPart = unsignedNumber % 10;
        [resultArray addObject:[NSString stringWithFormat:@"%u", decimalPart]];
        unsignedNumber = (unsignedNumber - decimalPart) / 10;
    }
    
    return resultArray;
}

@end
