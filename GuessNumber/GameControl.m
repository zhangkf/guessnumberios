//
//  GameControl.m
//  GuessNumber
//
//  Created by twer on 4/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GameControl.h"

@implementation GameControl

@synthesize count;
@synthesize number;

-(id)initWithCount:(int)aCount andNumber:(NSString*)aNumber
{
    self = [super init];
    if(self)
    {
        self->count = aCount;
        self->guesser = [[GuessNumber alloc]init];
        self->guesser.number = aNumber;
    }
    return self;
}

-(void)dealloc
{
    [self->guesser release];
    [super dealloc];
}

-(void)gameOver
{
    
}

-(NSString*)guess:(NSString *)input
{
    if(0 == self.count)
    {
        return @"Game Over!";
    }
    else
    {
        self.count--;
        return [guesser guess:input];
    }
}

-(NSString*)getResult
{
    if(0 == self.count)
    {
        return @"Game Over!";
    }
    
    return @"";
}

@end
