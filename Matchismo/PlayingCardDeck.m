//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by Joshua Dance on 2/6/13.
//  Copyright (c) 2013 Joshua. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (id)init {
    self = [super init]; //calls our super classes self first
    
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) { //take each suit and... (using fast enumaration syntax)
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++) {//using each rank...
                PlayingCard *card = [[PlayingCard alloc] init];//create a pointer to a playing card that lives in the heap
                card.rank = rank; //set the card rank to the rank level of the for loop
                card.suit = suit;//set the suit to be the level of the suit of the enumeration
                [self addCard:card atTop:YES];//added the card to ourself (we are a deck you know)
            }//end of for loop thru maxRank
        }//end of for each suit in validSuits
    }//end of if (self)
    
    return self;
}//end of init




























@end
