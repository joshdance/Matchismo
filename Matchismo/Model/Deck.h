//
//  Deck.h
//  Matchismo
//
//  Created by Joshua Dance on 1/30/13.
//  Copyright (c) 2013 Joshua. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;

- (Card *)drawRandomCard;

- (int)cardCount;

@end
