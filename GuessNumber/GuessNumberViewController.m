//
//  GuessNumberViewController.m
//  GuessNumber
//
//  Created by twer on 4/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GuessNumberViewController.h"

@interface GuessNumberViewController ()

@end

@implementation GuessNumberViewController

- (void)initTextField
{
    field = [[UITextField alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 300.0f, 60.0f)];
    [field setBorderStyle:UITextBorderStyleRoundedRect];
    [field setBorderStyle:UITextBorderStyleLine];
    [field setAdjustsFontSizeToFitWidth:YES];
    field.clearButtonMode = UITextFieldViewModeWhileEditing;
    field.keyboardType = UIKeyboardTypeNumberPad;
    [self.view addSubview:field];
}

- (void)initResultLabel
{
    label = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 80.0f, 300.0f, 60.0f)] ;
    [label setBackgroundColor:[UIColor redColor]];
    [label setClipsToBounds:YES];
    [self.view addSubview:label];
}

- (void)initSubmitButton
{
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(10.0f, 150.0f, 300.0f, 60.0f);
    [button setTitle:@"Guess" forState:UIControlStateNormal];
    [self.view addSubview:button];
}

- (void)loadView
{
    UIView* aView = [[[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    self.view = aView;
    
    [self initTextField];
    
    [self initResultLabel];

    [self initSubmitButton];
    
    [button addTarget:self action:@selector(guess) forControlEvents:UIControlEventTouchUpInside];
}

- (void)guess
{
    NSString *number = field.text;
    NSString *str = [gameControl guess:number];
    
    label.text = str;
    label.textAlignment = UITextAlignmentCenter;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    gameControl = [[GameControl alloc]initWithCount:6 andNumber:@"1234"];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    [field release];
    [label release];
    [button release];
    [gameControl release];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
