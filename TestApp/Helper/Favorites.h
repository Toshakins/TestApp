//
//  Favorites.h
//  TestApp
//
//  Created by Watta Puck on 10/18/13.
//  Copyright (c) 2013 Watta Puck. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Favorites : NSObject {
    NSMutableArray *favoritesList;
}
+ (Favorites *)instance;   // class method to return the singleton object
- (BOOL) isFavorite: (NSString *) maybeFavorite;
- (BOOL) isEmpty;
- (void) setFavorite: (NSString *) newFavorite;
- (void) removeFavorite: (NSString *) oldFavorite;

@property (retain, readonly) NSArray* favoritesList;
@end
