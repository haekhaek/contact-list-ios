//
//  ContactStore.m
//  Exercise 15 b
//
//  Created by Eugen Bopp on 19/12/2016.
//  Copyright © 2016 Eugen Bopp. All rights reserved.
//

#import "ContactStore.h"

@implementation ContactStore
@synthesize contacts;

+ (id)singleInstace {
    static ContactStore *staticInstance = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        staticInstance = [[self alloc] init];
    });
    return staticInstance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        Contact *myContact ;
        contacts = [[NSMutableArray alloc] init];
        NSArray *firstNames = [[NSArray alloc] initWithObjects:@"Hans",@"Christoph",@"Daniel",@"Hans",@"Eva",@"Monika",@"Regina",@"Iris",@"Sofia",@"Andrea", nil];
        NSArray *lastName = [[NSArray alloc] initWithObjects:@"Mueller",@"Bauer",@"Maier",@"Sauer",@"Scholz",@"Sievers",@"Wurst",@"Schmidt",@"Kunz",@"Reiber", nil];

        for (int i=0; i<[firstNames count]; i++) {
            NSUInteger day = arc4random_uniform(30) + 10;
            NSUInteger year = arc4random_uniform(89) + 10;
            NSUInteger phone1 = arc4random_uniform(9) + 1;
            NSUInteger phone2 = arc4random_uniform(9) + 1;
            NSUInteger phone3 = arc4random_uniform(9) + 1;

            myContact = [
                         [Contact alloc]
                         initWithParams:[NSMutableString stringWithString: firstNames[i]]
                         lastName:[NSMutableString stringWithString: lastName[i]]
                         phone:[NSMutableString stringWithString: [NSString stringWithFormat:@"017%lu64%lu4365%lu", phone1, phone2, phone3]]
                         email:[NSMutableString stringWithString: [NSString stringWithFormat:@"%@@%@.coms", firstNames[i], lastName[i]]]
                         birthday:[NSMutableString stringWithString: [NSString  stringWithFormat:@"%lu. Jun 19%lu", day, year]]
                        ];
            [contacts addObject: myContact];
        }
    }
    return self;
}
@end
