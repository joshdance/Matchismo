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
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (nonatomic, strong) PlayingCardDeck *viewDeck;

@end

@implementation CardGameViewController

//playing cards

- (PlayingCardDeck *)viewDeck {
    if (!_viewDeck) {
        _viewDeck = [[PlayingCardDeck alloc] init];
    }
    return _viewDeck;
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flips updated to %d", self.flipCount);
}

- (IBAction)flipCard:(UIButton *)sender
//(IBAction)return type is void. Just typedef to know it is special method
{
    //selected is the card. not selected is the apple back
    
    
    
    
    if (!sender.isSelected) {
        sender.selected = YES;
        self.flipCount++;
        Card *randomCard = self.viewDeck.drawRandomCard;
        if (randomCard) {
            [sender setTitle:randomCard.contents forState:UIControlStateSelected];
        } else {
            [sender setTitle:@"X" forState:UIControlStateSelected];
        }
    } else {
        sender.selected = NO;
        NSLog(@"There are %d card in the deck", self.viewDeck.cardCount);
    }
    
    //sender.selected = !sender.isSelected;
    
    
}

@end
