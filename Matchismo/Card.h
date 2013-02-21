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

@property (nonatomic) BOOL faceUp;
@property (nonatomic) BOOL unplayable;

//return type int, takes a pointer to a card named card
- (int)match:(Card *)card;

@end
