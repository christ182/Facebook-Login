//
//  SCViewController.m
//  FBlogin
//
//  Created by Rommel Bulalacao on 2/3/13.
//  Copyright (c) 2013 Rommel Bulalacao. All rights reserved.
//

#import "SCViewController.h"

@interface SCViewController ()


@end

@implementation SCViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}   

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) logoutButton{
    [FBSession.activeSession closeAndClearTokenInformation];
}



@end
