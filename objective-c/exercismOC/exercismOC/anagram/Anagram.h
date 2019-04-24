//
//  Anagram.h
//  exercismOC
//
//  Created by eggman qi on 2019/4/24.
//  Copyright © 2019 EBrainStudio. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Anagram : NSObject

- (Anagram *)initWithString:(NSString *_Nullable)str;
- (NSArray *)match:(NSArray<NSString *> *)strArr;

@end

NS_ASSUME_NONNULL_END
