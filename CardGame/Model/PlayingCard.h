//
//  PlayingCard.h
//  CardGame
//
//  Created by Matt Darnall on 5/15/13.
//  Copyright (c) 2013 Matt Darnall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+(NSArray *) rankStrings;
+(NSUInteger) maxRank;
+(NSArray *) validSuits;

@end
