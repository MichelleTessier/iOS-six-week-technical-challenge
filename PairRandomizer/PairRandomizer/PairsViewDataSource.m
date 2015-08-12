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



@implementation PairsViewDataSource

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return ([PersonController sharedInstance].people.count) / 2;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:pairsCell forIndexPath:indexPath];

    
    NSArray *randomPeople = [PersonController sharedInstance].randomPeople;
    
    Person *person = randomPeople[indexPath.section + indexPath.row + indexPath.section];
   
    NSLog(@"%li",indexPath.row);
    NSLog(@"%li", indexPath.section);
    NSLog(@"Next");
    
    
    cell.textLabel.text = person.name;
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSString *pair = @"Pair ";
   NSString *enumeratedPair = [pair stringByAppendingString:[NSString stringWithFormat:@"%li", section+1]];
    return enumeratedPair;
}



@end
