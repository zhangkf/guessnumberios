//
//  GameControlTest.m
//  GuessNumber
//
//  Created by twer on 4/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GameControlTest.h"
#import "GameControl.h"
#import "GuessNumber.h"

@implementation GameControlTest

- (void)setUp
{
    [super setUp];
    control = [[GameControl alloc]initWithCount:1 andNumber:@"1234"];
}

- (void)tearDown
{
    // Tear-down code here.
    [control release];
    
    [super tearDown];
}


-(void)testInitialCount
{
    STAssertEquals(1, control.count, @"");
}

-(void)testCountDecrease
{
    [control guess:@"1234"];
    
    STAssertEquals(0, control.count,@"");
}

-(void)test_should_game_over_when_count_is_0
{
    
    [control guess:@"6879"];

    STAssertEqualObjects(@"Game Over!", [control getResult],@"");

}

-(void)test_should_not_guess_when_game_over
{
    [control guess:@"4567"];
    [control guess:@"4567"];
    
    STAssertEquals(0, control.count,@"");
}

-(void)test_should_return_guess_result
{
    NSString* result = [control guess:@"1243"];
    STAssertEqualObjects(@"2A2B", result, @"");
}

-(void)test_should_return_congratulations_when_guesser_is_correct
{
    [control guess:@"1234"];
    NSString* result = [control getResult];
//    STAssertEqualObjects(@"Congratulations!", result, @"");
}


















@end
