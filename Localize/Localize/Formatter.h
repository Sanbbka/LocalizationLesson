//
//  Formatter.h
//  Localize
//
//  Created by Alexander Drovnyashin on 27.02.16.
//  Copyright © 2016 Alexander Drovnyashin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Formatter : NSObject

+ (NSDateFormatter *)dateFormatter;
+ (NSNumberFormatter *)numberFormatter;
+ (NSNumberFormatter *)decimalNumberFormatter;


@end
