//
//  OddNumbers.m
//  ios.stage-task1
//
//  Created by Alex Tsybulko on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "OddNumbers.h"

@implementation OddNumbers

- (NSInteger)oddNumbers:(NSArray <NSNumber *> *)array {
    
    int oddCount = 0;

    for ( int i = 0; i < [array count]; i++ ) {
        
        if ( [[array objectAtIndex:i]intValue] % 2 != 0 ) {
            oddCount++;
        }
    }
    return oddCount;
}

@end
