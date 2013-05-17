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

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.deck = [[PlayingCardDeck alloc]init];
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

- (IBAction)flipCard:(UIButton *)sender forEvent:(UIEvent *)event
{
    
    Card *card = [self.deck drawRandomCard];
    [sender setTitle:card.contents forState:UIControlStateSelected];

    sender.selected = !sender.selected;
    
    self.clickCount++;
    
}

@end
