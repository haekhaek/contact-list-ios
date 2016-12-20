//
//  ContactDetailViewController.m
//  Exercise 15 b
//
//  Created by Eugen Bopp on 19/12/2016.
//  Copyright © 2016 Eugen Bopp. All rights reserved.
//

#import "ContactDetailViewController.h"
#import "DatePickerViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ContactDetailViewController ()

@end

@implementation ContactDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _myDate = _myContact.birthday;
    emailTF.text = _myContact.email;
    phoneTF.text = _myContact.phone;
    [birthdayUB setTitle:_myContact.birthday forState:UIControlStateNormal];
    
    //set border of 
    [[birthdayUB layer] setBorderWidth:0.1f];
    [[birthdayUB layer] setBorderColor:[UIColor blackColor].CGColor];
    [[birthdayUB layer] setCornerRadius:5];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancelAction:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)submitContact:(id)sender
{
    if(self.delegate != nil){
        _myContact.email = (NSMutableString *) emailTF.text;
        _myContact.phone = (NSMutableString *) phoneTF.text;
        _myContact.birthday = (NSMutableString *) birthdayUB.titleLabel.text;

        [self.delegate submitContact];
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"showDatePicker"]){
        DatePickerViewController *destinationVC = (DatePickerViewController *) segue.destinationViewController;
        [destinationVC setDelegate:self];
        destinationVC.myBirthday = _myDate;
    }
}

-(void) submitDate:(NSString *) date
{
    _myDate = (NSMutableString *) date;
    [birthdayUB setTitle:date forState:UIControlStateNormal];
}
@end
