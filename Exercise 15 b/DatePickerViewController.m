//
//  DatePickerViewController.m
//  Exercise 15 b
//
//  Created by Eugen Bopp on 19/12/2016.
//  Copyright © 2016 Eugen Bopp. All rights reserved.
//

#import "DatePickerViewController.h"

@interface DatePickerViewController ()

@end

@implementation DatePickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDateFormatter *myDateFormatter = [[NSDateFormatter alloc] init];
    [myDateFormatter setDateFormat:@"dd-MM-yyyy"];
    
    if(_myBirthday != nil){
        NSDate *myDate = [myDateFormatter dateFromString:_myBirthday];
        [_birthdayDP setDate:myDate];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)cancelAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)submitBirthday:(id)sender {
    if(self.delegate != nil){
        NSDateFormatter *myFormatter = [[NSDateFormatter alloc] init];
        [myFormatter setDateFormat:@"dd. LLL yyyy"];

        [self.delegate submitDate: [myFormatter stringFromDate:_birthdayDP.date]];
        [self.navigationController popViewControllerAnimated:YES];
    }
}
@end
