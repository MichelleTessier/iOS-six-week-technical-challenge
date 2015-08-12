//
//  MasterListViewDataSource.m
//  PairRandomizer
//
//  Created by Michelle Tessier on 8/12/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import "MasterListViewDataSource.h"
#import "PersonController.h"
#import "PersonTableViewCell.h"

static NSString *cellID = @"cellID";

@implementation MasterListViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return ([PersonController sharedInstance].people.count + 1);
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
   PersonTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];

    cell.delegate = self;
    return cell;
    
    
    
    
}

-(void)nameEntered:(NSString *)name inSender:(PersonTableViewCell *)sender{
    Person *person = [[PersonController sharedInstance] createPerson];
    person.name = name;
    [[PersonController sharedInstance] save];
    NSLog(@"%@", [PersonController sharedInstance].people);
    [self.tableView reloadData];
    
}


@end
