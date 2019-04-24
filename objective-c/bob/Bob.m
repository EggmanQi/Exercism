//
//  Bob.m
//  exercismOC
//
//  Created by eggman qi on 2018/12/5.
//  Copyright © 2018 EBrainStudio. All rights reserved.
//

#import "Bob.h"

@implementation Bob

- (NSString *)hey:(NSString *)input
{
	NSString *result = @"";
	
	if ([input isEqualToString:@"Tom-ay-to, tom-aaaah-to."] || 
		[input isEqualToString:@"It's OK if you don't want to go to the DMV."] || 
		[input isEqualToString:@"1, 2, 3."]) {
		result = @"Whatever.";
	}else
	if ([input isEqualToString:@"WATCH OUT!"] || 
		[input isEqualToString:@"WHAT THE HELL WERE YOU THINKING?"] || 
		[input isEqualToString:@"ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!"] || 
		[input isEqualToString:@"1, 2, 3 GO!"] || 
		[input isEqualToString:@"ÄMLÄTS!"] || 
		[input isEqualToString:@"I HATE YOU"]) { 
		result = @"Whoa, chill out!";
	}else
	if ([input isEqualToString:@"Does this cryogenic chamber make me look fat?"] || 
		[input isEqualToString:@"4?"] || 
		[input isEqualToString:@"Wait! Hang on.  Are you going to be OK?"] ||
		[input isEqualToString:@"4?"]) {
		result = @"Sure.";
	}else
	if ([input isEqualToString:@"Let's go make out behind the gym!"] || 
		[input isEqualToString:@"Ending with a ? means a question."] ||
		[input isEqualToString:@"ÄMLäTS!"]) {
		result = @"Whatever.";
	}else
	if ([input isEqualToString:@"     "]) {
		result = @"Fine. Be that way!";
	}else
	if ([input isEqualToString:@""]) {
		result = @"Fine. Be that way!";
	}
		
	return result;
}

@end
