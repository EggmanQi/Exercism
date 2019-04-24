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

- (NSString *)hasAllergy:(AllergenType)type
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

@end
