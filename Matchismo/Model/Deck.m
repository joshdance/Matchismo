//
//  Deck.m
//  Matchismo
//
//  Created by Joshua Dance on 1/30/13.
//  Copyright (c) 2013 Joshua. All rights reserved.
//

#import "Deck.h"

@interface Deck()
//we don't want the array storing our cards to be public so we put it in our private interface
@property (strong, nonatomic) NSMutableArray *cards;//holds Cards
@end

@implementation Deck

- (NSMutableArray *)cards //making our own getter to make the array cards when we need it
{
    if (!_cards) _cards = [[NSMutableArray alloc] init]; //if the instance variable _cards doesn't exist, create a new nsmutablearray and alloc and it it and set it to _cards
    return _cards;
}

- (void)addCard:(id)card atTop:(BOOL)atTop
{
    if (atTop)//if the boolean atTop is true meaning the card is supposed to be put on top
    {
        [self.cards insertObject:card atIndex:0];//cards array inserts the passed in card at the "top" or index of 0.
    } else {
        [self.cards addObject:card];//cards array adds the passed in card to the end
    }
}


- (Card *)drawRandomCard
{
    Card *randomCard = nil; //created a pointer to a Card named randomCard
        
    if (self.cards.count) //if there is a count so a card is in the array of cards
    {
        unsigned index = arc4random() % self.cards.count;//create an index, make a random number and mod it by the count of the index.
        randomCard = [self.cards objectAtIndexedSubscript:index];//gets a random card from the array cards
        [self.cards removeObjectAtIndex:index];//removes the card you drew from the deck
    }
    return randomCard;//returns the random card you drew and removed from the deck
}

- (int)cardCount {
    int count = 0;
    count = [self.cards count];
    return count;
}


@end
