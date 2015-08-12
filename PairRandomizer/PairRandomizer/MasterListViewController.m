//
//  ViewController.m
//  PairRandomizer
//
//  Created by Michelle Tessier on 8/12/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import "MasterListViewController.h"
#import "PersonTableViewCell.h"


@interface MasterListViewController () 

@end

@implementation MasterListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"Pair Randomizer!";
    if (!([PersonController sharedInstance].people)) {
       
    }
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}









@end
