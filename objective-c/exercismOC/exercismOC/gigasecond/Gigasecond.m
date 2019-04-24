//
//  Gigasecond.m
//  exercismOC
//
//  Created by eggman qi on 2018/12/25.
//  Copyright © 2018 EBrainStudio. All rights reserved.
//

#import "Gigasecond.h"

@interface Gigasecond ()
@property (nonatomic, assign)NSDate	*myDate;
@end

@implementation Gigasecond

- (Gigasecond *)initWithStartDate:(NSDate *)date
{
	_myDate = date;
	
	return self;
}

- (NSDate *)gigasecondDate
{
	NSTimeInterval t = [_myDate timeIntervalSince1970];
	t += pow(10, 9);
	return [NSDate dateWithTimeIntervalSince1970:t];
}

@end
