//
//  Card.h
//  CardGame
//
//  Created by Matt Darnall on 5/15/13.
//  Copyright (c) 2013 Matt Darnall. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic) BOOL isFaceUp;

@property (nonatomic) BOOL isUnplayable;

-(int)match:(NSArray *)otherCards;

@end
