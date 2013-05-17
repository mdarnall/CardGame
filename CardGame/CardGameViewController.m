//
//  CardGameViewController.m
//  CardGame
//
//  Created by Matt Darnall on 5/14/13.
//  Copyright (c) 2013 Matt Darnall. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCard.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *clickLabel;

@property (nonatomic) int clickCount;

@property (nonatomic) PlayingCardDeck *deck;

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;

@end

@implementation CardGameViewController

-(PlayingCardDeck*)deck
{
    if(!_deck) _deck = [[PlayingCardDeck alloc]init];
    return _deck;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setClickCount:(int)clickCount
{
    _clickCount = clickCount;
    self.clickLabel.text = [NSString stringWithFormat:@"Flips: %d", self.clickCount];
}

-(void) setCardButtons:(NSArray *)cardButtons
{
    _cardButtons = cardButtons;
    for (id button in cardButtons) {
        Card *card = [self.deck drawRandomCard];
        [button setTitle:card.contents forState:UIControlStateSelected];
    }
    
}

- (IBAction)flipCard:(UIButton *)sender forEvent:(UIEvent *)event
{
    sender.selected = !sender.selected;
    self.clickCount++;
    
}

@end
