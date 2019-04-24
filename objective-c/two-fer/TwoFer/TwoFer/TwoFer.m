//
//  TwoFer.m
//  TwoFer
//
//  Created by eggman qi on 2018/12/5.
//  Copyright © 2018 EBrainStudio. All rights reserved.
//

#import "TwoFer.h"

@implementation TwoFer

+ (NSString *)twoFerWithName:(NSString *)name
{
	return [NSString stringWithFormat:@"One for %@, one for me.", ( ! [name isKindOfClass:[NSString class]] || name.length==0) ? @"you" : name];
}

@end
