//
//  GameControl.h
//  GuessNumber
//
//  Created by twer on 4/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GuessNumber.h"

@interface GameControl : NSObject {

    GuessNumber *guesser;
    
}

@property int count;
@property NSString* number;

-(id)initWithCount:(int)aCount andNumber:(NSString*)aNumber;
-(NSString*) guess:(NSString*)input;
-(NSString*) getResult;
-(void)gameOver;

@end