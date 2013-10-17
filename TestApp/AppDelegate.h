//
//  AppDelegate.h
//  TestApp
//
//  Created by Watta Puck on 10/15/13.
//  Copyright (c) 2013 Watta Puck. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "shotsViewController.h"
#import "favoriteViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    UITabBarController	*tabBarController;
    shotsViewController *shotsController;
    favoriteViewController  *favoriteController;
    UITableView *shotsView, *favoriteView;
    NSMutableArray *shotsTable;
    
}

@property (strong, nonatomic) UIWindow *window;

@end
