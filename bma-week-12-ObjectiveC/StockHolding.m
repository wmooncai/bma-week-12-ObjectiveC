//
//  StockHolding.m
//  bma-week-12-ObjectiveC
//
//  Created by Wally on 12/3/12.
//  Copyright (c) 2012 Mooncai. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize purchaseSharePrice;
@synthesize currentSharePrice;
@synthesize numberOfShares;
@synthesize ticker;

- (float)costInDollars
{
    return (  [self purchaseSharePrice]
            * [self numberOfShares] );
}

- (float)valueInDollars
{
    return (  [self currentSharePrice]
            * [self numberOfShares] );
}

@end
