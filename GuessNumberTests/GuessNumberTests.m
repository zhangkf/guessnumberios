//
//  GuessNumberTests.m
//  GuessNumberTests
//
//  Created by twer on 4/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GuessNumberTests.h"
#import "GuessNumber.h"

@implementation GuessNumberTests

- (void)setUp
{
    [super setUp];
    example = [[GuessNumber alloc]init ];
    example.number = @"1324";
}

- (void)tearDown
{ 
    [example release];
    [super tearDown];
}

- (void)test_return_2A2B_when_guess_1234_for_1324
{
    STAssertEqualObjects(@"2A2B", [example guess:@"1234"],@"wrong guess");
}


- (void)test_return_0A0B_when_guess_5678_for_1324
{
    STAssertEqualObjects(@"0A0B", [example guess:@"5678"],@"wrong guess");
}


@end
