//
//  MasterListViewDataSource.m
//  PairRandomizer
//
//  Created by Michelle Tessier on 8/12/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import "MasterListViewDataSource.h"

static NSString *cellID = @"cellID";

@implementation MasterListViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    cell.textLabel.text = @"names";
    return cell;
}
@end
