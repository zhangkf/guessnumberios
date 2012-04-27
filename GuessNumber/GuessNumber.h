//
//  GuessNumber.h
//  GuessNumber
//
//  Created by twer on 4/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GuessNumber : NSObject

@property (nonatomic, retain) NSString *number;


- (NSString *)guess:(NSString *) input;

@end
