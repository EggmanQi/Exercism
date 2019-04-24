//
//  WordCount.m
//  exercismOC
//
//  Created by eggman qi on 2018/12/26.
//  Copyright © 2018 EBrainStudio. All rights reserved.
//

#import "WordCount.h"

#define SEPARATORS [[ NSCharacterSet alphanumericCharacterSet ] invertedSet ]

@interface WordCount ()

@property (nonatomic, copy) NSString *myStr;

@end

@implementation WordCount

- (WordCount *)initWithString:(NSString *)str
{
	_myStr = [str lowercaseString];
	return self;
}

- (NSDictionary <NSString *, NSNumber *> *)count
{
	NSArray *tempArr = [_myStr componentsSeparatedByCharactersInSet:SEPARATORS];
	NSMutableDictionary *dic = [NSMutableDictionary dictionary];
	for (NSString *str in tempArr) {
		if (str.length==0) {
			continue;
		}
		dic[str] = @([dic[str] integerValue] + 1);
	}
	return dic;
}


@end
