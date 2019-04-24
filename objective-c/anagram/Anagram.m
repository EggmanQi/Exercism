//
//  Anagram.m
//  exercismOC
//
//  Created by eggman qi on 2019/4/24.
//  Copyright © 2019 EBrainStudio. All rights reserved.
//

#import "Anagram.h"

@interface Anagram ()

@property (nonatomic, copy) NSString	*targetStr;
@property (nonatomic, strong) NSDictionary	*targetDic;

@end

@implementation Anagram

- (Anagram *)initWithString:(NSString *_Nullable)str
{
	_targetStr = str;
	_targetDic = [self strToDic:str];
	return self;
}

- (NSArray *)match:(NSArray<NSString *> *)strArr
{
	__block NSMutableArray *arr = [NSMutableArray array];
	
	[strArr enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
		if ([self anagram:obj]) {
			[arr addObject:obj];
		}
	}];
	
	return arr;
}

- (BOOL)anagram:(NSString *)str
{
	if (_targetStr.length != str.length) {
		return NO;
	}
	
	if ([_targetStr caseInsensitiveCompare:str] == NSOrderedSame) {
		return NO;
	}
	
	__block NSInteger matchCount = 0;
	NSDictionary *dic = [self strToDic:str];
	
	[_targetDic enumerateKeysAndObjectsUsingBlock:^(NSString *  _Nonnull key, NSNumber *  _Nonnull obj, BOOL * _Nonnull stop) {
		NSNumber *num = dic[key];
		if (num) {
			if ([num isEqualToNumber:obj]) {
				matchCount = matchCount + 1;
			}
		}
	}];
	
	return matchCount == _targetDic.count;
}

- (NSDictionary *)strToDic:(NSString *)str
{
	str = [str lowercaseString];
	NSMutableDictionary *dic = [NSMutableDictionary dictionary];
	
	for (int i=0; i<str.length; i++) {
		NSString *key = [str substringWithRange:NSMakeRange(i, 1)];
		if ([[dic allKeys] containsObject:key]) {
			NSNumber *value = dic[key];
			value = @(value.integerValue + 1);
			dic[key] = value;
		}else {
			dic[key] = @(1);
		}
	}
	
	return dic;
}

@end
