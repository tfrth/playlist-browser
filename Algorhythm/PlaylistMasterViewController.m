//
//  ViewController.m
//  Algorhythm
//
//  Created by Tyler Frith on 7/30/15.
//  Copyright (c) 2015 tfrth. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.aButton setTitle:@"press me!" forState:UIControlStateNormal];
   
    Playlist *playlist = [[Playlist alloc] initWithIndex:0];
    self.playlistimageView0.image = playlist.playlistIcon;
    
    


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"showPlaylistDetail"]) {
        
        PlaylistDetailViewController *playlistDetailController = (PlaylistDetailViewController *)segue.destinationViewController;
        
        playlistDetailController.playlist = [[Playlist alloc] initWithIndex:0];
    
    }
}

@end
