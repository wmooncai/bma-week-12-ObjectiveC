//
//  ForeignStockHolding.m
//  bma-week-12-ObjectiveC
//
//  Created by Wally on 12/4/12.
//  Copyright (c) 2012 Mooncai. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

@synthesize conversionRate;

- (float)costInDollars
{
    return ( [self purchaseSharePrice]
            * [self numberOfShares]
            * [self conversionRate] );
}

- (float)valueInDollars
{
    return (  [self currentSharePrice]
            * [self numberOfShares]
            * [self conversionRate] );
}

@end
