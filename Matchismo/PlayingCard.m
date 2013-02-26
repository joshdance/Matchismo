//
//  PlayingCard.m
//  CardTest
//
//  Created by Joshua Dance on 1/29/13.
//  Copyright (c) 2013 Joshua. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    if (otherCards.count == 1) {
        PlayingCard *otherCard = [otherCards lastObject];
        if ([otherCard.suit isEqualToString:self.suit]) {//matches itself to another card
            score = 1;
        } else if (otherCard.rank == self.rank){
            score = 4;
        }
    }
    return score;
}

- (NSString *)contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];//calling the class method rankStrings
    return [rankStrings[self.rank] stringByAppendingString:self.suit];//rank is the number and suit is the symbol so they are truncated together and returned in a custom contents method override. 
}

@synthesize suit = _suit; //since we created both the setter and the getter we have to call this. Otherwise xCode would do it for you. 

+ (NSArray *)rankStrings
{
    //returns an array created on the fly which has what the cards are allowed to be
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8",@"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger)maxRank
{
    //returns the length of the array rankStrings -1
    return [self rankStrings].count-1;//minus 1 because you eliminate the ?
}

+ (NSArray *)validSuits
{
    return @[@"♥", @"♦", @"♠", @"♣"];
}

- (void)setSuit:(NSString *)suit //setter
{
    if ([[PlayingCard validSuits] containsObject:suit])//if the array returned by playingcard of valid suits contains the object suit which is passed in
    {
        _suit = suit; //we allow the ivar _suit to be set to the passed in suit.
    }
}

- (NSString *)suit //getter
{
    if (_suit != nil) {
        return _suit;
    } else {
        return @"?";
    }
    //return _suit     ?       _suit : @"?";
    //return condition ? valueIfTrue : valueIfFalse;
}

- (void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

@end
