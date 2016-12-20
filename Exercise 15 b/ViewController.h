//
//  ViewController.h
//  Exercise 15 b
//
//  Created by Eugen Bopp on 19/12/2016.
//  Copyright © 2016 Eugen Bopp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContactStore.h"
#import "ContactDetailViewController.h"

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, ContactSubmission>
@property (nonatomic) ContactStore *contactStore;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

- (void) submitContact;

@end

