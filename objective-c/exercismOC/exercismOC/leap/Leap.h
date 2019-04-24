//
//  Leap.h
//  exercismOC
//
//  Created by eggman qi on 2018/12/5.
//  Copyright © 2018 EBrainStudio. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Leap : NSObject

@property (nonatomic, assign)BOOL isLeapYear;

- (Leap *)initWithCalendarYear:(NSNumber *)year;

@end

NS_ASSUME_NONNULL_END
