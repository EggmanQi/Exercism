//
//  Meetup.h
//  exercismOC
//
//  Created by eggman qi on 2019/1/2.
//  Copyright © 2019 EBrainStudio. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
	MeetupDayOfWeekSunday		= 1,
	MeetupDayOfWeekMonday		= 2,
	MeetupDayOfWeekTuesday		= 3,
	MeetupDayOfWeekWednesday	= 4,
	MeetupDayOfWeekThursday		= 5,
	MeetupDayOfWeekFriday		= 6,
	MeetupDayOfWeekSaturday		= 7,
} MeetupWeekDay;

typedef enum : NSUInteger {
	MeetupOptionsFirst			= 1,
	MeetupOptionsSecond			= 2,
	MeetupOptionsThird			= 3,
	MeetupOptionsFourth			= 4,
	MeetupOptionsLast			= 5,
	MeetupOptionsTeenth			= 6,
} MeetupOptions;

@interface Meetup : NSObject

- (Meetup *)initWithYear:(NSInteger)year andMonth:(NSInteger)month;
- (NSDate *)dayForDayOfWeek:(MeetupWeekDay)weekDay andOptions:(MeetupOptions)options;

@end

NS_ASSUME_NONNULL_END
