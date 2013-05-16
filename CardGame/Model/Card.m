//
//  Card.m
//  CardGame
//
//  Created by Matt Darnall on 5/15/13.
//  Copyright (c) 2013 Matt Darnall. All rights reserved.
//

#import "Card.h"

@implementation Card


-(int) match:(NSArray *)otherCards
{
    int score = 0;
    
    for(Card *card in otherCards){
        if([card.contents isEqualToString:self.contents]){
            score = 1;
        }
    }
    return score;
    
}
@end
