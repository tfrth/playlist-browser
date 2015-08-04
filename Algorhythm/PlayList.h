//
//  PlayList.h
//  Algorhythm
//
//  Created by Tyler Frith on 8/4/15.
//  Copyright (c) 2015 tfrth. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PlayList : NSObject

@property (strong, nonatomic) NSString *playlistTitle;
@property (strong, nonatomic) NSString *playlistDescription;
@property (strong, nonatomic) UIImage *playlistIcon;
@property (strong, nonatomic) UIImage *playlistIconLarge;

@property (strong, nonatomic) NSArray *playlistArtists;
@property (strong, nonatomic) UIColor *backgroundColor;



@end


