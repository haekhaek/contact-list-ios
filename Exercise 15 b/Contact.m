//
//  Contact.m
//  Exercise 15 b
//
//  Created by Eugen Bopp on 19/12/2016.
//  Copyright © 2016 Eugen Bopp. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (id)initWithParams:(NSMutableString*)nFirstName lastName:(NSMutableString*)nLastName phone:(NSMutableString*)nPhone email:(NSMutableString*)nEmail birthday:(NSMutableString*)nBirthday {
    self = [super init];
    if(self){
        [self setFirstName:nFirstName];
        [self setLastName:nLastName];
        [self setPhone:nPhone];
        [self setEmail:nEmail];
        [self setBirthday:nBirthday];
    }
    return self;
}

@end
