#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    
    NSMutableArray *resultArray = [NSMutableArray new];
    NSMutableOrderedSet *rankedArrayToOrderedSet = [NSMutableOrderedSet orderedSetWithArray:rankedArray];

    if([rankedArray count] == 0){
        for (int i = 0; i < [playerArray count]; i++){
            [resultArray addObject:@(1)];
        }
        return resultArray;
    }
    
    if ([playerArray count] == 0) {
        return @[];
    }
    
    for (id playerScore in playerArray) {
        NSInteger place = 1;
        for (id rankedScore in rankedArrayToOrderedSet) {
            if ([playerScore intValue] < [rankedScore intValue] )
                place ++;
        }
        [resultArray addObject:@(place)];
    }
    
    return resultArray;
}

@end
