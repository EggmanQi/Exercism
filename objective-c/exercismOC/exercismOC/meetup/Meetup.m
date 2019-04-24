//
//  Meetup.m
//  exercismOC
//
//  Created by eggman qi on 2019/1/2.
//  Copyright © 2019 EBrainStudio. All rights reserved.
//

#import "Meetup.h"

@interface Meetup ()
@property (nonatomic, strong)NSCalendar *calendar;
@property (nonatomic, assign)NSInteger myYear;
@property (nonatomic, assign)NSInteger myMonth;
@property (nonatomic, assign)NSInteger count;

@end

@implementation Meetup

- (Meetup *)initWithYear:(NSInteger)year andMonth:(NSInteger)month
{
	_calendar = [NSCalendar currentCalendar];
	_count = 1;
	_myYear = year;
	_myMonth = month;
	return self;
}

- (NSDate *)dayForDayOfWeek:(MeetupWeekDay)weekDay andOptions:(MeetupOptions)options
{
	NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
	dateComponents.month = _myMonth;
	dateComponents.year = _myYear;
	
	NSDate *oringalDate = [_calendar dateFromComponents:dateComponents];
	
//	优化: 减少遍历次数
	
	NSInteger day = [self getNumberOfDaysInMonth:oringalDate]; 
	for (NSInteger i=1; i<=day; i++) {
		dateComponents.day = i;
		if ([self isDateComponents:dateComponents
					matchDayOfWeek:weekDay 
						andOptions:options]) {
			NSDate *date = [_calendar dateFromComponents:dateComponents];
			return date;
		}
	}

	return nil;
}

- (NSInteger)getNumberOfDaysInMonth:(NSDate *)targetDate {
	NSCalendar *calendar  = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
	NSRange range = [calendar rangeOfUnit:NSCalendarUnitDay 
								   inUnit:NSCalendarUnitMonth
								  forDate:targetDate];
	return range.length;
}

- (BOOL)isDateComponents:(NSDateComponents *)targetDataComponents 
		  matchDayOfWeek:(MeetupWeekDay)weekDay 
			  andOptions:(MeetupOptions)options
{
	NSDate *date = [_calendar dateFromComponents:targetDataComponents];
	targetDataComponents = [_calendar components:NSCalendarUnitMonth|NSCalendarUnitWeekday|NSCalendarUnitWeekOfMonth|NSCalendarUnitDay|NSCalendarUnitYear 
										fromDate:date]; 
	NSInteger numOfWeekDay = [targetDataComponents weekday]; 
	
	if (numOfWeekDay != weekDay) {
		return NO;
	}
	
	if (options == MeetupOptionsLast) {
		NSRange weekRange = [_calendar rangeOfUnit:NSCalendarUnitWeekOfMonth
											inUnit:NSCalendarUnitMonth 
										   forDate:date];
		NSInteger weeksCount=weekRange.length;
		NSInteger week = [targetDataComponents weekOfMonth];
		if (weeksCount == week) {
			return YES;
		}
	}else if (options == MeetupOptionsTeenth) {
		NSInteger day = [targetDataComponents day];
		if (day>=13 && day<=19) {
			return YES;
		}
	}else {
		if (_count == options) {
			return YES;
		}
	}
	
	_count = _count + 1;

	return NO;
}

@end
