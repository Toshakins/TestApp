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

- (void)toggleFavorite:(id)sender{
    favButton *btn = sender;
    if ([[Favorites instance] isFavorite:btn.shotName]) {
        [[Favorites instance] removeFavorite:btn.shotName];
    }
    UITableViewCell *cell = (UITableViewCell *)[btn superview];
    cell = [self.tableView cellForRowAtIndexPath:[self.tableView indexPathForCell:(UITableViewCell *)[btn superview]]];
    [self.tableView reloadData];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated{
    shotsPaths = [[NSArray alloc] initWithArray:[[Favorites instance] favoritesList]];
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
