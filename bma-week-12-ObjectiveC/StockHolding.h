//
//  StockHolding.h
//  bma-week-12-ObjectiveC
//
//  Created by Wally on 12/3/12.
//  Copyright (c) 2012 Mooncai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject
{
    NSString *ticker;
    float purchaseSharePrice;
    float currentSharePrice;
    int numberOfShares;
}

@property float purchaseSharePrice;
@property float currentSharePrice;
@property int numberOfShares;
@property NSString *ticker;

- (float)costInDollars;     // purchaseSharePrice * numberOfShares
- (float)valueInDollars;    // currentSharePrice * numberOfShares

@end
