//
//  WordCount.m
//  exercismOC
//
//  Created by eggman qi on 2018/12/26.
//  Copyright © 2018 EBrainStudio. All rights reserved.
//

#import "WordCount.h"

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
	[self removeUnuseCharacter];
	
	NSArray *tempStrArr = [_myStr componentsSeparatedByString:@" "];
	
	NSString *pattern = @"[a-zA-Z0-9]*";
	NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",pattern];
	NSArray *final = [tempStrArr filteredArrayUsingPredicate:predicate];
	NSMutableDictionary *dic = [NSMutableDictionary dictionary];
	for (NSString *str in final) {
		if (str.length==0) {
			continue;
		}
		NSNumber *count = dic[str];
		if (count) {
			count = @(count.integerValue + 1);
			dic[str] = count;
		}else {
			dic[str] = @1;
		}
	}
	return dic;
}

- (void)removeUnuseCharacter
{
	NSMutableArray *tempArr = [NSMutableArray array];
	for (NSInteger i=0; i<_myStr.length; i++) {
		NSString *character = [_myStr substringWithRange:NSMakeRange(i, 1)];
		[tempArr addObject:character];
	}
	
	NSString *pattern = @"[a-zA-Z0-9 ]*";
	NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",pattern];
	NSArray *tempArr_p = [tempArr filteredArrayUsingPredicate:predicate];
	
	NSString *combat = [tempArr_p componentsJoinedByString:@""];
	
	_myStr = combat;
}

@end
