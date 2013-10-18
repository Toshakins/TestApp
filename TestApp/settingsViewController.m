//
//  settingsViewController.m
//  TestApp
//
//  Created by Watta Puck on 10/18/13.
//  Copyright (c) 2013 Watta Puck. All rights reserved.
//

#import "settingsViewController.h"

@interface settingsViewController ()

@end

@implementation settingsViewController

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
	// Do any additional setup after loading the view.
    UILabel *name;
    name = [[[UILabel alloc] initWithFrame:CGRectMake(self.view.center.x/2, self.view.center.y/2, self.view.bounds.size.width/2, 200)] autorelease];
    name.lineBreakMode = UILineBreakModeWordWrap;
    name.numberOfLines = 5;
    name.textAlignment = UITextAlignmentCenter;
    name.text = [[NSString alloc] initWithString:@"Anton Ovinnikov\nhttps://github.com/Toshakins/TestApp\n"];
    
    name.text = [name.text stringByAppendingFormat:@"\nVer. %@", [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"]];
    name.text = [name.text stringByAppendingFormat:@"\nBuilded %@", [NSString stringWithUTF8String:__DATE__]];
    
    [self.view addSubview:name];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
