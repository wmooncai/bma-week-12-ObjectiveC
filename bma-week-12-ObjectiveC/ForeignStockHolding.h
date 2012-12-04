//
//  ForeignStockHolding.h
//  bma-week-12-ObjectiveC
//
//  Created by Wally on 12/4/12.
//  Copyright (c) 2012 Mooncai. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "StockHolding.h"

@interface ForeignStockHolding : StockHolding
{
    float conversionRate;
}

@property float conversionRate;

- (float)costInDollars;     // purchaseSharePrice * numberOfShares
- (float)valueInDollars;    // currentSharePrice * numberOfShares

@end
