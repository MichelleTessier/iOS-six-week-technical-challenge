//
//  PersonController.h
//  PairRandomizer
//
//  Created by Michelle Tessier on 8/12/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface PersonController : NSObject

+ (PersonController*)sharedInstance;

#pragma mark - Create

- (Person *)createPerson;

#pragma mark- Retreieve 

@property (nonatomic, strong, readonly) NSArray *people;

#pragma mark- Update

- (void)save;

#pragma mark- Delete

- (void)removePerson:(Person *)person;

#pragma mark- Randomize Pairs

- (NSArray *)createRandomPairsFromArray:(NSArray *)array;

@end
