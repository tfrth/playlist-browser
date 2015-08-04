//
//  PlayList.m
//  Algorhythm
//
//  Created by Tyler Frith on 8/4/15.
//  Copyright (c) 2015 tfrth. All rights reserved.
//

#import "PlayList.h"
#import "MusicLibrary.h"


@implementation PlayList

- (instancetype)initWithIndex: (NSUInteger)index { //use index value/parameter to access music library array
    self = [super init];
    if (self) {          //check to make sure get valid object back and not nil
        MusicLibrary *musicLibrary = [[MusicLibrary alloc] init];  //creates instance of musicLibrary class "musicLibrary"
        NSArray *library = musicLibrary.library;  //use library property we created in MusicLibrary.h to have access locally in var "library"
        
        NSDictionary *playlistDictionary = library[index]; //takes index param and stores returned NSDictionary instance in playListDictionary;
        
        _playlistTitle = [playlistDictionary objectForKey:kTitle];  //with the returned instance of NSDictionary, assigns kTitle to playListTitle property
        _playlistDescription = [playlistDictionary objectForKey:kDescription]; //with the returned instance of NSDictionary, assigns kDescription to playListDescription property
        
        
    }
    return self;  //always have to return self or will get an error
};

@end
