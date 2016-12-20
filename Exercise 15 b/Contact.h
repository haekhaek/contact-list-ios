//
//  Contact.h
//  Exercise 15 b
//
//  Created by Eugen Bopp on 19/12/2016.
//  Copyright © 2016 Eugen Bopp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject
    @property (nonatomic, readwrite) NSMutableString *firstName;
    @property (nonatomic, readwrite) NSMutableString *lastName;
    @property (nonatomic, readwrite) NSMutableString *phone;
    @property (nonatomic, readwrite) NSMutableString *email;
    @property (nonatomic, readwrite) NSMutableString *birthday;

- (id)initWithParams:(NSMutableString*)nFirstName lastName:(NSMutableString*)nLastName phone:(NSMutableString*)nPhone email:(NSMutableString*)nEmail birthday:(NSMutableString*)nBirthday;

@end
