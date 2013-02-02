//
//  SCLoginViewController.m
//  FBlogin
//
//  Created by Rommel Bulalacao on 2/3/13.
//  Copyright (c) 2013 Rommel Bulalacao. All rights reserved.
//

#import "SCLoginViewController.h"

@interface SCLoginViewController ()

- (IBAction) performLogin;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *spinner;
@end

@implementation SCLoginViewController

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

-(void) performLogin{
    NSLog(@"Logging in..");
    
    [self.spinner startAnimating];
    
    SCAppDelegate* appDelegate = [UIApplication sharedApplication].delegate;
    [appDelegate openSession];
}

- (void)loginFailed
{
    // User switched back to the app without authorizing. Stay here, but
    // stop the spinner.
    [self.spinner stopAnimating];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
