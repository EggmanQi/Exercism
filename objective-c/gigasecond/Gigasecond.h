//
//  Gigasecond.h
//  exercismOC
//
//  Created by eggman qi on 2018/12/25.
//  Copyright © 2018 EBrainStudio. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Gigasecond : NSObject

- (Gigasecond *)initWithStartDate:(NSDate *)date;
- (NSDate *)gigasecondDate;

@end

NS_ASSUME_NONNULL_END
