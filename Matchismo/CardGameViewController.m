//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Joshua Dance on 1/29/13.
//  Copyright (c) 2013 Joshua. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@interface CardGameViewController ()
//IBOutlet is blank but used by xCode
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons; //array of cardbuttons
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck *deck;
@end

@implementation CardGameViewController

- (Deck *)deck
{
    if (!_deck) _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}

- (void)setCardButtons:(NSArray *)cardButtons
{
    _cardButtons = cardButtons;
    for (UIButton *cardButton in self.cardButtons) {
        Card *card = [self.deck drawRandomCard];
        NSLog(@"There are %d card in the deck", self.deck.cardCount);
        [cardButton setTitle:card.contents forState:UIControlStateSelected];
    }
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)flipCard:(UIButton *)sender
{
    //selected is the card. not selected is the apple back
    if (!sender.isSelected) {
        sender.selected = YES;
        self.flipCount++;
    } else {
        sender.selected = NO;
    }
    //sender.selected = !sender.isSelected;
}

@end
