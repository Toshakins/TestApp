//
//  shotsViewController.m
//  TestApp
//
//  Created by Watta Puck on 10/17/13.
//  Copyright (c) 2013 Watta Puck. All rights reserved.
//

#import "shotsViewController.h"
#import "shotCell.h"

@interface shotsViewController ()

@end

@implementation shotsViewController

- (void)toggleFavorite:(id)sender{
    [(UIButton*)sender setBackgroundImage:[UIImage imageNamed:@"favheart.png"] forState:UIControlStateNormal];
    
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    shotsPaths = [[NSArray alloc] initWithArray:[[NSBundle mainBundle] pathsForResourcesOfType:@"jpeg" inDirectory:nil]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [shotsPaths count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:nil];
    
    // Configure the cell...
    if (cell == nil) {
        cell = [[[shotCell alloc] initWithStyle:UITableViewCellStyleDefault
                                       reuseIdentifier:CellIdentifier] autorelease];
    }
    NSString *t = [[NSString alloc] initWithString:[[shotsPaths objectAtIndex:indexPath.row] lastPathComponent]];
    
    UIImageView *photo = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    [cell.contentView addSubview:photo];
    photo.image = [UIImage imageNamed:t];
    
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(50, 0, 200, 50)];
    [cell.contentView addSubview:title];
    title.text = [t stringByDeletingPathExtension];
    
    UIButton *myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [myButton addTarget:self action:@selector(toggleFavorite:) forControlEvents:UIControlEventTouchUpInside];
    [myButton setBackgroundImage:[UIImage imageNamed:@"heart.png"] forState:UIControlStateNormal];
    myButton.frame = CGRectMake(0.0, 0.0, 30.0, 30.0);
    cell.accessoryView = myButton;
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
