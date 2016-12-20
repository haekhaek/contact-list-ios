//
//  ViewController.m
//  Exercise 15 b
//
//  Created by Eugen Bopp on 19/12/2016.
//  Copyright © 2016 Eugen Bopp. All rights reserved.
//

#import "ViewController.h"
#import "ContactStore.h"
#import "ContactDetailViewController.h"
#import "TableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Contact List";
    _contactStore = [ContactStore singleInstace];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView*)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_contactStore.contacts count];
}

- (UITableViewCell *)tableView:(UITableView *)myTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = (TableViewCell *) [myTableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (cell == nil) {
        cell = (TableViewCell *) [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    Contact *myContact = [_contactStore.contacts objectAtIndex:indexPath.row];
    cell.contactName.text = [NSString stringWithFormat:@"%@ %@", myContact.firstName, myContact.lastName];
    cell.contactPhone.text = [NSString stringWithFormat:@"Phone: %@", myContact.phone];
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"showView"]){
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Contact *myContact = [_contactStore.contacts objectAtIndex:indexPath.row];
        ContactDetailViewController *destinationVC = segue.destinationViewController;

        [destinationVC setDelegate:self];
        destinationVC.myContact = myContact;
        destinationVC.title = [NSString stringWithFormat:@"%@ %@", myContact.firstName, myContact.lastName];
    }
}

- (void) submitContact
{
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
