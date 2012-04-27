//
//  GuessNumberViewController.h
//  GuessNumber
//
//  Created by twer on 4/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameControl.h"

@interface GuessNumberViewController : UIViewController
{
    UITextField *field; 
    UILabel *label;
    UIButton *button;
    
    GameControl *gameControl;
}
@end
