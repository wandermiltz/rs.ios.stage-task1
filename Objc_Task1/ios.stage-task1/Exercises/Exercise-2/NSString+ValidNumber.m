#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    
    NSInteger length = self.length;
    NSRange rangeNoDigits = [self rangeOfCharacterFromSet:[[NSCharacterSet decimalDigitCharacterSet] invertedSet]];
    
        if((rangeNoDigits.location == NSNotFound) && (0 < length && length <= 100)){
            return YES;
        }else {
            return NO;
        }
}
@end
