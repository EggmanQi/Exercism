//
//  Leap.m
//  exercismOC
//
//  Created by eggman qi on 2018/12/5.
//  Copyright © 2018 EBrainStudio. All rights reserved.
//

#import "Leap.h"

@implementation Leap

- (Leap *)initWithCalendarYear:(NSNumber *)year
{
	NSInteger y = [year integerValue]; 
	if (y<0 || y>INTMAX_MAX) {
		self.isLeapYear = NO;
	}else {
		self.isLeapYear = (y%4==0   && 
						   y%100==0 && 
						   y%400==0);
	}
	
	
	return self;
}

@end
