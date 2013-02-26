//
//  Card.m
//  CardTest
//
//  Created by Joshua Dance on 1/28/13.
//  Copyright (c) 2013 Joshua. All rights reserved.
//

#import "Card.h"

@implementation Card

@synthesize contents;

@synthesize faceUp;
@synthesize unplayable;

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards){
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}

@end
