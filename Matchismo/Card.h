//
//  Card.h
//  CardTest
//
//  Created by Joshua Dance on 1/28/13.
//  Copyright (c) 2013 Joshua. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter=isFaceUp) BOOL faceUp;
@property (nonatomic, getter=isUnPlayable) BOOL unplayable;

//return type int, takes a pointer to a card named card
- (int)match:(NSArray *)otherCards;

@end
