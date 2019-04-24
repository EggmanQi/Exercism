//
//  Allergies.m
//  exercismOC
//
//  Created by eggman qi on 2018/12/26.
//  Copyright © 2018 EBrainStudio. All rights reserved.
//

#import "Allergies.h"

@interface Allergies ()
@property (nonatomic, assign) NSInteger	myScore;
@end

@implementation Allergies

- (Allergies *)initWithScore:(NSUInteger)score
{
	_myScore = score;
 	return self;
}

- (BOOL)hasAllergy:(AllergenType)type
{
	NSLog(@"%@ | %@ : %@", [self toBinarySystemWithDecimalSystem:[@(self.myScore) stringValue]], 
		  [self toBinarySystemWithDecimalSystem:[@(type) stringValue]], 
		  [self toBinarySystemWithDecimalSystem:[@(self.myScore | type) stringValue]]);
	NSLog(@" %ld & %ld 1: %@", self.myScore, type, @(self.myScore & type));
//	NSLog(@" %ld | %ld: %@", self.myScore, type, @(self.myScore | type));
	 
	return (self.myScore & type); 
}

- (NSString *)_hasAllergy:(AllergenType)type
{
	if (_myScore <= AllergenUndefine_Min && _myScore >= AllergenUndefine_Max) {
		return @"Bob is allergic to eggs";
	}
	
	self.myScore = self.myScore - type;
	if (self.myScore>=0) {
		switch (type) {
			case AllergenEggs:
				return @"Bob is allergic to eggs";
				break;
			case AllergenPeanuts:
				return @"Bob is allergic to peanuts";
				break;
			case AllergenShellfish:
				return @"Bob is allergic to shellfish";
				break;
			case AllergenStrawberries:
				return @"Bob is allergic to strawberries";
				break;
			case AllergenTomatoes:
				return @"Bob is allergic to tomatoes";
				break;
			case AllergenChocolate:
				return @"Bob is allergic to chocolate";
				break;
			case AllergenPollen:
				return @"Bob is allergic to pollen";
				break;
			case AllergenCats:
				return @"Bob is allergic to cats";
				break;
				
			default:
				return nil;
				break;
		}
	}
	
	return nil;
}


- (NSString *)toBinarySystemWithDecimalSystem:(NSString *)decimal
{
	int num = [decimal intValue];
	int remainder = 0;      //余数
	int divisor = 0;        //除数
	
	NSString * prepare = @"";
	
	while (true)
		{
		remainder = num%2;
		divisor = num/2;
		num = divisor;
		prepare = [prepare stringByAppendingFormat:@"%d",remainder];
		
		if (divisor == 0)
			{
			break;
			}
		}
	
	NSString * result = @"";
	for (NSInteger i = prepare.length - 1; i >= 0; i --)
		{
		result = [result stringByAppendingFormat:@"%@",
				  [prepare substringWithRange:NSMakeRange(i , 1)]];
		}
	
	return result;
	
}

@end
