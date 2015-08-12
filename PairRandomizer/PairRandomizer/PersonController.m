//
//  PersonController.m
//  PairRandomizer
//
//  Created by Michelle Tessier on 8/12/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import "PersonController.h"
#import "Stack.h"

@interface PersonController()

@property (nonatomic, strong) NSArray *people;

@end

@implementation PersonController

+ (PersonController*)sharedInstance {
    static PersonController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [PersonController new];
    });
   
    return sharedInstance;
}

#pragma mark - create

- (Person *)createPerson {
    
    Person *person = [NSEntityDescription insertNewObjectForEntityForName:@"Person" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    
    return person;
}

#pragma mark - update

-(NSArray *)people{
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Person"];
    
    NSError *error;
    
    NSArray *allPeople = [[Stack sharedInstance].managedObjectContext executeFetchRequest:request error:&error];
    
    if (error) {
        NSLog(@"GRB says: My bad: %@", error.localizedDescription);
    }
    
    return allPeople;
}

#pragma mark- save

- (void)save{
    
    [[Stack sharedInstance].managedObjectContext save:nil];
    
}

#pragma mark - Randomize Pairs

- (NSArray *)createRandomPairsFromArray:(NSArray *)array{
    
    NSMutableArray *randomPeople = [NSMutableArray arrayWithCapacity:array.count];

    for (int i = 0; i < array.count; i++) {
        [randomPeople insertObject:array[i] atIndex:arc4random_uniform(array.count)];
    }
    NSLog(@"%@", randomPeople);
    NSArray *returnArray = randomPeople;
    return returnArray;

  
}

@end
