//
//  WordCount.h
//  exercismOC
//
//  Created by eggman qi on 2018/12/26.
//  Copyright © 2018 EBrainStudio. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WordCount : NSObject

- (WordCount *)initWithString:(NSString *)str;
- (NSDictionary <NSString *, NSNumber *> *)count;

@end

NS_ASSUME_NONNULL_END
