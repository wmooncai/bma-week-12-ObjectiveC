//
//  main.m
//  bma-week-12-ObjectiveC
//
//  Created by Wally on 12/3/12.
//  Copyright (c) 2012 Mooncai. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "StockHolding.h"
#import "ForeignStockHolding.h"

void bma_week_12_Ch17(NSMutableArray *stockPortfolio)
{
    StockHolding *stock1 = [[StockHolding alloc] init];
    StockHolding *stock2 = [[StockHolding alloc] init];
    StockHolding *stock3 = [[StockHolding alloc] init];
    
    float profit = 0;
    
    [stock1 setTicker:@"APPL"];
    [stock1 setCurrentSharePrice:586.19];
    [stock1 setNumberOfShares:100];
    [stock1 setPurchaseSharePrice:567.89];
    [stockPortfolio addObject:stock1];
    
    [stock2 setTicker:@"GOOG"];
    [stock2 setCurrentSharePrice:695.25];
    [stock2 setNumberOfShares:100];
    [stock2 setPurchaseSharePrice:678.90];
    [stockPortfolio addObject:stock2];

    
    [stock3 setTicker:@"MSFT"];
    [stock3 setCurrentSharePrice:26.43];
    [stock3 setNumberOfShares:100];
    [stock3 setPurchaseSharePrice:34.56];
    [stockPortfolio addObject:stock3];

    /*
    NSArray *stockPortfolio = [NSArray arrayWithObjects : stock1, stock2
                                                        , stock3, nil];
    */
    NSLog(@"  \n  \n***** BMA Week 12 Homework Chapter 17 Challenge *****  \n  \n");
    for (StockHolding *stock in stockPortfolio) {
        
        profit = ( [stock valueInDollars] - [stock costInDollars] );
        
        NSLog(@"  \n%@:  \nPurchase Cost: $%.2f  \nCurrent Value: $%.2f  \n       Profit: %s%.2f  \n  \n"
              , [stock ticker]
              , [stock costInDollars]
              , [stock valueInDollars]
              , ( (profit < 0) ? "-$" : "$" )
              , ( ((profit < 0) ? -1.0 : 1.0) * profit ) );
    }
}

void bma_week_12_Ch18(NSMutableArray *stockPortfolio)
{
    ForeignStockHolding *stock1 = [[ForeignStockHolding alloc] init];
    ForeignStockHolding *stock2 = [[ForeignStockHolding alloc] init];
    ForeignStockHolding *stock3 = [[ForeignStockHolding alloc] init];
    
    float profit = 0;
    
    [stock1 setTicker:@"NOK"];
    [stock1 setCurrentSharePrice:586.19];
    [stock1 setNumberOfShares:100];
    [stock1 setPurchaseSharePrice:567.89];
    [stock1 setConversionRate:10.0];
    [stockPortfolio addObject:stock1];

    
    [stock2 setTicker:@"RIMM"];
    [stock2 setCurrentSharePrice:695.25];
    [stock2 setNumberOfShares:100];
    [stock2 setPurchaseSharePrice:678.90];
    [stock2 setConversionRate:100.0];
    [stockPortfolio addObject:stock2];

    
    [stock3 setTicker:@"QCOM"];
    [stock3 setCurrentSharePrice:26.43];
    [stock3 setNumberOfShares:100];
    [stock3 setPurchaseSharePrice:34.56];
    [stock3 setConversionRate:1000.0];
    [stockPortfolio addObject:stock3];

    /*
    NSArray *stockPortfolio = [NSArray arrayWithObjects : stock1, stock2
                                                        , stock3, nil];
    */
    NSLog(@"  \n  \n***** BMA Week 12 Homework Chapter 18 Challenge *****  \n  \n");
    for (StockHolding *stock in stockPortfolio) {
        
        profit = ( [stock valueInDollars] - [stock costInDollars] );
        
        NSLog(@"  \n%@:  \nPurchase Cost: $%.2f  \nCurrent Value: $%.2f  \n       Profit: %s%.2f  \n  \n"
              , [stock ticker]
              , [stock costInDollars]
              , [stock valueInDollars]
              , ( (profit < 0) ? "-$" : "$" )
              , ( ((profit < 0) ? -1.0 : 1.0) * profit ) );
    }
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *stockPortfolio = [NSMutableArray array];
        bma_week_12_Ch17(stockPortfolio);
        
        bma_week_12_Ch18(stockPortfolio);

    }
    return 0;
}

