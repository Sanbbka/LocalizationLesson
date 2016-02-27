//
//  BookModel.h
//  Localize
//
//  Created by Alexander Drovnyashin on 27.02.16.
//  Copyright © 2016 Alexander Drovnyashin. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UIImage;

@interface BookModel : NSObject

@property (strong, nonatomic, readonly) NSString *bookName;
@property (nonatomic, strong, readonly) UIImage *bookImage;
@property (strong, nonatomic, readonly) NSString *bookAuthor;
@property (strong, nonatomic, readonly) NSNumber *bookEdition;
@property (nonatomic, strong, readonly) NSDate *bookDate;
@property (strong, nonatomic, readonly) NSString *bookInformation;
@property (strong, nonatomic, readonly) NSDecimalNumber *bookRate;

- (instancetype)initWithTitle:(NSString *)title
                        image:(UIImage *)image
                       author:(NSString *)author
                 editionCount:(NSNumber *)editionCount
                         text:(NSString *)text
                         rate:(NSDecimalNumber *)rate
                         date:(NSDate *)date;

@end
