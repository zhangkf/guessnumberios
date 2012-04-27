//
//  GuessNumber.m
//  GuessNumber
//
//  Created by twer on 4/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GuessNumber.h"

@implementation GuessNumber

@synthesize number;

- (NSString *) guess:(NSString *)input
{
    int countB = 0;
    int countA = 0;
    
    for (int i = 0; i <4; i++) {

        unichar ch = [number characterAtIndex:i];
        unichar inputCh = [input characterAtIndex:i];
        if (ch==inputCh) {
            countA++;
            continue;
        }
        
        for (int j=0; j<4; j++) {
            int inputCh = [input characterAtIndex:j];
            if(ch == inputCh && i!= j){
                countB++;
            }
        }

    }

    return [NSString  stringWithFormat:@"%dA%dB", countA, countB];
    
}

- (void)dealloc
{
    [number release];
    [super dealloc];
}



@end
