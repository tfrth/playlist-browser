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
    self = [super init]; //calls super class initializer
    if (self) {          //check to make sure get valid object back and not nil
        MusicLibrary *musicLibrary = [[MusicLibrary alloc] init];  //creates instance of musicLibrary class "musicLibrary"
        NSArray *library = musicLibrary.library;  //use library property we created in MusicLibrary.h to have access locally in var "library"
        
        NSDictionary *playlistDictionary = library[index]; //takes index param and stores returned NSDictionary instance in playListDictionary;
        
        _playlistTitle = [playlistDictionary objectForKey:kTitle];  //with the returned instance of NSDictionary, assigns kTitle to playListTitle property
        _playlistDescription = [playlistDictionary objectForKey:kDescription]; //with the returned instance of NSDictionary, assigns kDescription to playListDescription property
        
        NSString *iconName = [playlistDictionary objectForKey:kIcon];
        _playlistIcon = [UIImage imageNamed:iconName];
        
        NSString *largeIconName = [playlistDictionary objectForKey:kLargeIcon];
        _playlistIconLarge = [UIImage imageNamed:largeIconName];
        
        _playlistArtists = [NSArray arrayWithArray:[playlistDictionary objectForKey:kArtists]];
        
        NSDictionary *colorDictionary = [playlistDictionary objectForKey:kBackgroundColor];
        _backgroundColor = [self rgbColorFromDictionary:colorDictionary];
        
        
    }
    return self;  //always have to return self or will get an error
};

- (UIColor *)rgbColorFromDictionary: (NSDictionary *)colorDictionary {
    CGFloat red = [[colorDictionary objectForKey:@"red"] doubleValue];
    CGFloat green = [[colorDictionary objectForKey:@"green"] doubleValue];
    CGFloat blue = [[colorDictionary objectForKey:@"blue"] doubleValue];
    CGFloat alpha = [[colorDictionary objectForKey:@"alpha"] doubleValue];
    
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];

};

@end
