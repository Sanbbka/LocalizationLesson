//
//  BookModel.m
//  Localize
//
//  Created by Alexander Drovnyashin on 27.02.16.
//  Copyright © 2016 Alexander Drovnyashin. All rights reserved.
//

#import "BookModel.h"

@implementation BookModel

- (instancetype)initWithTitle:(NSString *)title
                        image:(UIImage *)image
                       author:(NSString *)author
                 editionCount:(NSNumber *)editionCount
                         text:(NSString *)text
                         rate:(NSDecimalNumber *)rate
                         date:(NSDate *)date {
    self = [super init];
    if (self) {
        _bookName  = title;
        _bookImage = image;
        _bookAuthor = author;
        _bookEdition = editionCount;
        _bookInformation = text;
        _bookRate = rate;
        _bookDate = date;
    }
    return self;
}

@end
