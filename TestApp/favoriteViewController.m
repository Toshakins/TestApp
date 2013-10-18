//
//  favoriteViewController.m
//  TestApp
//
//  Created by Watta Puck on 10/18/13.
//  Copyright (c) 2013 Watta Puck. All rights reserved.
//

#import "favoriteViewController.h"
#import "Favorites.h"
#import "favButton.h"

@interface favoriteViewController ()

@end

@implementation favoriteViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated{
    shotsPaths = [[NSArray alloc] initWithArray:[[Favorites instance] favoritesList]];
    [self.tableView reloadData];
    if ([[Favorites instance] isEmpty]) {
        placeholder = [[UILabel alloc] initWithFrame:CGRectMake(self.view.center.x, self.view.center.y - 5, 100, 100)];
        placeholder.textAlignment = UITextAlignmentCenter;
        [self.tableView addSubview:placeholder];
        placeholder.text = [[NSString alloc] initWithString:@"No favorites"];
    }
    else {
        [placeholder removeFromSuperview];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
