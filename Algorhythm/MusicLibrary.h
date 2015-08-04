//
//  MusicLibrary.h
//  Algorhythm
//
//  Created by Tyler Frith on 7/31/15.
//  Copyright (c) 2015 tfrth. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const kTitle; //makes constants global, as opposed to only being available in MusicLibrary class 
extern NSString *const kDescription;
extern NSString *const kIcon;
extern NSString *const kLargeIcon;
extern NSString *const kBackgroundColor;
extern NSString *const kArtists;

@interface MusicLibrary : NSObject

@property (strong, nonatomic) NSArray *library;

@end
