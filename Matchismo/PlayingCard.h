//
//  PlayingCard.h
//  CardTest
//
//  Created by Joshua Dance on 1/29/13.
//  Copyright (c) 2013 Joshua. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

//class method which gives the max rank possible
+ (NSUInteger)maxRank;//public in the .h file

//class method which returns the string of valid suits
+ (NSArray *)validSuits; //because it is the .h file it is public

@end
