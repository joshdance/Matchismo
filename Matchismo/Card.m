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

- (int)match:(Card *)card
{
    int score = 0;
    
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    
    return score;
}

@end
