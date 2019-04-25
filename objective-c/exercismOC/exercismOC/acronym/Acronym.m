//
//  Acronym.m
//  exercismOC
//
//  Created by eggman qi on 2019/4/24.
//  Copyright © 2019 EBrainStudio. All rights reserved.
//

#import "Acronym.h"

@interface Acronym ()

@property (nonatomic, strong) NSPredicate *p_onlyStr;
@property (nonatomic, strong) NSPredicate *p_onlyUpperCaseStr;

@end

@implementation Acronym

+ (NSString *)abbreviate:(NSString *_Nullable)str
{
	Acronym *acronym = [[Acronym alloc] init];
	NSArray *resultArr = [acronym wordsArr:str];
	
	return [resultArr componentsJoinedByString:@""];
}

- (id)init
{
	if (self = [super init]) {
		NSString *regex_1 = @"^[a-zA-Z]*$";
		_p_onlyStr = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex_1];
		
		NSString *regex_2 = @"^[A-Z]*$";
		_p_onlyUpperCaseStr = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex_2];
	}
	return self;
}

- (NSArray *)wordsArr:(NSString *)str
{
	NSMutableArray *tempArr = [NSMutableArray array];
	
	BOOL isMatch = NO; 
	for (int i=0; i<str.length; i++) {
		NSString *subStr = [str substringWithRange:NSMakeRange(i, 1)];
		if ([self isOnlyStr:subStr]) {
			if (isMatch) {
				if (i>0) {
					NSString *preStr = [str substringWithRange:NSMakeRange(i-1, 1)];
					if ([self isUpperCaseStr:preStr]==NO && 
						[self isUpperCaseStr:subStr]==YES) {
						[tempArr addObject:subStr];
					}
				}
			}else {
				[tempArr addObject:[subStr uppercaseString]];
				isMatch = YES;
			}
		}else {
			isMatch = NO;
		}
	}
	
	return tempArr.copy;
}

- (BOOL)isOnlyStr:(NSString *)str 
{
	return [_p_onlyStr evaluateWithObject:str];
}

- (BOOL)isUpperCaseStr:(NSString *)str
{
	return [_p_onlyUpperCaseStr evaluateWithObject:str];
}

@end
