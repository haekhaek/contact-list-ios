//
//  ContactDetailViewController.h
//  Exercise 15 b
//
//  Created by Eugen Bopp on 19/12/2016.
//  Copyright © 2016 Eugen Bopp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contact.h"
#import "DatePickerViewController.h"

@protocol ContactSubmission <NSObject>
- (void) submitContact;
@end

@interface ContactDetailViewController : UIViewController <DateSubmission>{
    __weak IBOutlet UIButton *birthdayUB;
    __weak IBOutlet UITextField *phoneTF;
    __weak IBOutlet UITextField *emailTF;
}

@property (nonatomic) Contact *myContact;
@property (weak, nonatomic) NSMutableString *myDate;
@property (weak, nonatomic) id<ContactSubmission> delegate;

- (IBAction)cancelAction:(id)sender;
- (IBAction)submitContact:(id)sender;
- (void) submitDate:(NSString *)date;

@end
