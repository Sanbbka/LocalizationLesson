//
//  Formatter.m
//  Localize
//
//  Created by Alexander Drovnyashin on 27.02.16.
//  Copyright © 2016 Alexander Drovnyashin. All rights reserved.
//

#import "Formatter.h"

@implementation Formatter

//Date formatter with locale
+ (NSDateFormatter *)dateFormatter {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.locale = [NSLocale currentLocale];
    dateFormatter.dateStyle = NSDateFormatterMediumStyle;
    return dateFormatter;
}
//Number formatter with Locale
+ (NSNumberFormatter *)numberFormatter {
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    numberFormatter.locale = [NSLocale currentLocale];
    numberFormatter.numberStyle = NSNumberFormatterNoStyle;
    return numberFormatter;
}
//Double(in this case) number formatter with Locale
+ (NSNumberFormatter *)decimalNumberFormatter {
    NSNumberFormatter *decimalNumberFormatter = [[NSNumberFormatter alloc] init];
    decimalNumberFormatter.locale = [NSLocale currentLocale];
    decimalNumberFormatter.numberStyle = NSNumberFormatterDecimalStyle;
    return decimalNumberFormatter;
}

@end
