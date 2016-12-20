//
//  DatePickerViewController.h
//  Exercise 15 b
//
//  Created by Eugen Bopp on 19/12/2016.
//  Copyright © 2016 Eugen Bopp. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DateSubmission <NSObject>
- (void)submitDate:(NSString *) date;
@end

@interface DatePickerViewController : UIViewController
@property (nonatomic) NSMutableString *myBirthday;
@property (weak, nonatomic) IBOutlet UIDatePicker *birthdayDP;
@property (weak, nonatomic) id<DateSubmission> delegate;

- (IBAction)cancelAction:(id)sender;
- (IBAction)submitBirthday:(id)sender;

@end
