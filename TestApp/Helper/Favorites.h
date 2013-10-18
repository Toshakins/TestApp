//
//  Favorites.h
//  TestApp
//
//  Created by Watta Puck on 10/18/13.
//  Copyright (c) 2013 Watta Puck. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Favorites : NSObject {
    NSString *path;
    NSMutableArray *favoritesList;
}
+ (Favorites *)sharedCenter;   // class method to return the singleton object
- (BOOL) isFavorite: (NSString *) maybeFavorite;
- (void) setFavorite: (NSString *) newFavorite;
- (void) removeFavorite: (NSString *) oldFavorite;
@end
