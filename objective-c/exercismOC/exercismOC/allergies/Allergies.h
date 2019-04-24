//
//  Allergies.h
//  exercismOC
//
//  Created by eggman qi on 2018/12/26.
//  Copyright © 2018 EBrainStudio. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
	AllergenUndefine_Min		= 0,
	AllergenEggs				= 1,
	AllergenPeanuts				= 2,
	AllergenShellfish			= 4,
	AllergenStrawberries		= 8,
	AllergenTomatoes			= 16,
	AllergenChocolate			= 32,
	AllergenPollen				= 64,
	AllergenCats				= 128,
	AllergenUndefine_Max		= 999,
} AllergenType;

NS_ASSUME_NONNULL_BEGIN

@interface Allergies : NSObject

- (Allergies *)initWithScore:(NSUInteger)score;
- (BOOL)hasAllergy:(AllergenType)type;

@end

NS_ASSUME_NONNULL_END
