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
    
    if (!([PersonController sharedInstance].people.count)) {
        return 1;
    }else {
    return [PersonController sharedInstance].people.count + 1;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
   PersonTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];

    cell.delegate = self;
    
    if (!([PersonController sharedInstance].people.count)) {
        cell.nameTextField.placeholder = @"Enter name";
    } else if (indexPath.row < ([PersonController sharedInstance].people.count-1)){
        Person *person = [PersonController sharedInstance].people[indexPath.row];
        cell.nameTextField.text = person.name;
    } else {
        cell.nameTextField.placeholder = @"Enter name";
    }
    
    return cell;
    
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        Person *person = [PersonController sharedInstance].people[indexPath.row];
        [[PersonController sharedInstance] removePerson:person];
        [[PersonController sharedInstance] save];
        [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:YES];
      
    }
    
}

-(void)nameEntered:(NSString *)name inSender:(PersonTableViewCell *)sender{
   
    if (sender.person) {
        sender.person.name = name;
    } else{
        Person *person = [[PersonController sharedInstance] createPerson];
        person.name = name;
        sender.person = person;
    }
   
    [[PersonController sharedInstance] save];
    NSLog(@"%@", [PersonController sharedInstance].people);
    [self.tableView reloadData];
    
}


@end
