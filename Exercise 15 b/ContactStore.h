//
//  ContactStore.h
//  Exercise 15 b
//
//  Created by Eugen Bopp on 19/12/2016.
//  Copyright © 2016 Eugen Bopp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactStore : NSObject
    @property (nonatomic) NSMutableArray *contacts;

+ (id)singleInstace;

@end
