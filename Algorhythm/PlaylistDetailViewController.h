//
//  PlaylistDetailViewController.h
//  Algorhythm
//
//  Created by Tyler Frith on 7/31/15.
//  Copyright (c) 2015 tfrth. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Playlist; //forwward declaration 

@interface PlaylistDetailViewController : UIViewController //subclass of UIViewController, inherits from it.

@property (strong, nonatomic) Playlist *playlist;
@property (weak, nonatomic) IBOutlet UIImageView *playlistCoverImage;

@property (weak, nonatomic) IBOutlet UILabel *playlistTitle;
@property (weak, nonatomic) IBOutlet UILabel *playlistDescription;


@property (weak, nonatomic) IBOutlet UILabel *playlistArtist0;

@property (weak, nonatomic) IBOutlet UILabel *playlistArtist1;

@property (weak, nonatomic) IBOutlet UILabel *playlistArtist2;


















@end
