//
//  Favorites.m
//  TestApp
//
//  Created by Watta Puck on 10/18/13.
//  Copyright (c) 2013 Watta Puck. All rights reserved.
//

#import "Favorites.h"

@implementation Favorites

- (BOOL)isFavorite:(NSString *) maybeFavorite {
    return [favoritesList containsObject:maybeFavorite];
}

- (void) setFavorite: (NSString *) newFavorite {
    if (![self isFavorite:newFavorite]) {
        [favoritesList addObject:newFavorite];
        [favoritesList writeToFile:path atomically:YES];
        return;
    }
    //throw exception
}

- (void) removeFavorite:(NSString *)oldFavorite {
    if ([self isFavorite:oldFavorite]) {
        [favoritesList removeObject:oldFavorite];
        [favoritesList writeToFile:path atomically:YES];
        return;
    }
    //throw exception
}

static Favorites *sharedFavorites = nil;    // static instance variable

+ (Favorites *)sharedCenter {
    if (sharedFavorites == nil) {
        sharedFavorites = [[super allocWithZone:NULL] init];
    }
    return sharedFavorites;
}

- (id)init {
    if ( (self = [super init]) ) {
        // your custom initialization
        path = [[NSBundle mainBundle] pathForResource:@"favorites" ofType:@"plist"];
    }
    return self;
}

// singleton methods
+ (id)allocWithZone:(NSZone *)zone {
    return [[self sharedCenter] retain];
}

- (id)copyWithZone:(NSZone *)zone {
    return self;
}

- (id)retain {
    return self;
}

- (NSUInteger)retainCount {
    return NSUIntegerMax;  // denotes an object that cannot be released
}

- (void)release {
    // do nothing - we aren't releasing the singleton object.
}

- (id)autorelease {
    return self;
}

-(void)dealloc {
    [super dealloc];
}

@end
