//
//  PairsViewDataSource.m
//  PairRandomizer
//
//  Created by Michelle Tessier on 8/12/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import "PairsViewDataSource.h"
#import "PersonController.h"

static NSString *pairsCell = @"pairsCell";
typedef NS_ENUM(NSUInteger, cellTypeOptions) {
    cellTypeOptionPairTitle,
    cellTypeOptionMember1,
    cellTypeOptionMember2,
};

@implementation PairsViewDataSource

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return ([PersonController sharedInstance].people.count) / 2;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:pairsCell forIndexPath:indexPath];
UITableView
    
    
    NSArray *people = [PersonController sharedInstance].people;
    NSLog(@"%li",indexPath.row);
    Person *person = people[indexPath.row];
    
    cell.textLabel.text = person.name;
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSString *pair = @"Pair ";
   NSString *enumeratedPair = [pair stringByAppendingString:[NSString stringWithFormat:@"%li", section+1]];
    return enumeratedPair;
}



@end
