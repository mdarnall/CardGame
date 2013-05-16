//
//  Deck.m
//  CardGame
//
//  Created by Matt Darnall on 5/15/13.
//  Copyright (c) 2013 Matt Darnall. All rights reserved.
//

#import "Deck.h"

@interface Deck()

@property (strong, nonatomic) NSMutableArray *cards;

@end

@implementation Deck

/*
 Getter for the cards property
*/
- (NSMutableArray *)cards
{
    if(!_cards){
        _cards = [[NSMutableArray alloc]init];
    }
    return _cards;

}

/*
 Instance method to add a card to top of the Deck
 */
- (void) addCard:(Card *)card atTop:(BOOL)atTop
{
    if(atTop){
        [self.cards insertObject:card atIndex:0];
    }
    else {
        [self.cards addObject:card];
    }
}

- (Card *) drawRandomCard
{
    Card *randomCard = nil;
    if(self.cards.count){
        unsigned index = arc4random() % self.cards.count;
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
        
    }
    return randomCard;    
}

@end
