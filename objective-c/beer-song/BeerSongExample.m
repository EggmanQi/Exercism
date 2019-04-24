//
//  BeerSongExample.m
//  exercismOC
//
//  Created by eggman qi on 2018/12/25.
//  Copyright © 2018 EBrainStudio. All rights reserved.
//

#import "BeerSongExample.h"

@interface BeerSongExample ()
@property (nonatomic, assign)NSInteger myBottles;
@end

@implementation BeerSongExample

- (BeerSongExample *)initWithNumberOfBeerBottles:(NSInteger)bottles
{
	_myBottles = bottles > 99 ? 99 : bottles;
	_myBottles = _myBottles>=0 ?: 0;
	return self;
}

- (NSString *)singBeerSong
{	
	NSString *song = @"";
	
	for (NSInteger i=_myBottles; i>0; i--) {
		song = [song stringByAppendingString:[self song_1:i]];
		song = [song stringByAppendingString:[self song_2:i]];
		song = [song stringByAppendingString:[self song_3:i-1]];
	}
	
	song = [song stringByAppendingString:@"No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall."];

	return song;
}

- (NSString *)song_1:(NSInteger)count
{
	if (count > 1) {
		return [NSString stringWithFormat:@"%ld bottles of beer on the wall, ", count];
	}else if (count == 1) {
		return @"1 bottle of beer on the wall, ";
	}else {
		return @"No more bottles of beer on the wall, ";
	}
}

- (NSString *)song_2:(NSInteger)count
{
	if (count > 1) {
		return [NSString stringWithFormat:@"%ld bottles of beer.\n", count];
	}else if (count == 1) {
		return @"1 bottle of beer.\n";
	}else {
		return @"no more bottles of beer.\n";
	}
}

- (NSString *)song_3:(NSInteger)count
{
	if (count > 1) {
		return [NSString stringWithFormat:@"Take one down and pass it around, %ld bottles of beer on the wall.\n\n", count];
	}else if (count == 1) {
		return @"Take one down and pass it around, 1 bottle of beer on the wall.\n\n";
	}else {
		return @"Take one down and pass it around, no more bottles of beer on the wall.\n\n";
	}
}

@end
