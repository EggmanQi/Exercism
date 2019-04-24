//
//  HelloWorld.m
//  HelloWorld
//
//  Created by eggman qi on 2018/12/5.
//  Copyright © 2018 EBrainStudio. All rights reserved.
//

#import "HelloWorld.h"

@implementation HelloWorld

- (NSString *)hello:(NSString *)sb
{
	
	return [NSString stringWithFormat:@"Hello, %@!", [sb length] == 0 ? @"World" : sb];
}

@end
