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



@property (weak, nonatomic) IBOutlet UILabel *buttonPressLabel;
@property (strong, nonatomic) Playlist *playlist;


@end
