//
//  ViewController.m
//  Localize
//
//  Created by Alexander Drovnyashin on 27.02.16.
//  Copyright © 2016 Alexander Drovnyashin. All rights reserved.
//

#import "ViewController.h"
#import "Formatter.h"
#import "BookModel.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextView *bookDescr;
@property (weak, nonatomic) IBOutlet UIImageView *bookImage;

@property (weak, nonatomic) IBOutlet UILabel *bookAuthor;
@property (weak, nonatomic) IBOutlet UILabel *bookEdition;
@property (weak, nonatomic) IBOutlet UILabel *bookDate;
@property (weak, nonatomic) IBOutlet UILabel *nameBook;
@property (weak, nonatomic) IBOutlet UILabel *rating;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self initBook];
}

- (void)initBook{
    
    UIImage *image = [UIImage imageNamed:NSLocalizedString(@"book.bookImage", nil)];
    NSNumber *editionCount = [NSNumber numberWithInt:rand()];
    NSDecimalNumber *rate = [[NSDecimalNumber alloc] initWithDouble:rand()%10];
    NSDate *date = [NSDate date];

    BookModel *book = [[BookModel alloc] initWithTitle:NSLocalizedString(@"book.bookName.Tempest", nil) image:image author:NSLocalizedString(@"book.bookAuthor.Tempest", nil) editionCount:editionCount text:@"book.bookInformation" rate:rate date:date];
    
    self.nameBook.text = [NSString stringWithFormat:@"%@", NSLocalizedString(book.bookName, nil)];
    self.bookAuthor.text = [NSString stringWithFormat:@"%@", NSLocalizedString(book.bookAuthor, nil) ];
    self.bookDescr.text = [NSString stringWithFormat:@"%@", NSLocalizedString(book.bookInformation, nil)];
    
    NSString *dateString = [[Formatter dateFormatter] stringFromDate:date];
    NSString *editionCountString = [[Formatter numberFormatter] stringFromNumber:editionCount];
    NSString *rateString = [[Formatter decimalNumberFormatter] stringFromNumber:rate];
    
    self.bookDate.text = [NSString stringWithFormat:@"%@", dateString];
    self.bookEdition.text = [NSString stringWithFormat:@"%@", editionCountString];
    self.rating.text = [NSString stringWithFormat:@"%@", rateString];
    
    self.bookImage.image = book.bookImage;
}

@end
