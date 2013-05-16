//
//  PlayingCard.m
//  CardGame
//
//  Created by Matt Darnall on 5/15/13.
//  Copyright (c) 2013 Matt Darnall. All rights reserved.
//


#import "PlayingCard.h"

@implementation PlayingCard

-(NSString *) contents
{
    return [NSString stringWithFormat:@"%d%@", self.rank, self.suit];
}

+(NSArray *) rankStrings
{
    
    return @[@"", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K" ];
}

+(NSUInteger) maxRank
{
    return [self rankStrings].count - 1;
}

+(NSArray *) validSuits
{
    return @[@"C", @"D", @"H", @"S"];
}

@end
