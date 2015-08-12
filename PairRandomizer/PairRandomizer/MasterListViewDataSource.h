//
//  MasterListViewDataSource.h
//  PairRandomizer
//
//  Created by Michelle Tessier on 8/12/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "PersonTableViewCell.h"

@interface MasterListViewDataSource : NSObject <UITableViewDataSource, PersonTableViewCellDelegate>


@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end
