//
//  PersonTableViewCell.m
//  PairRandomizer
//
//  Created by Michelle Tessier on 8/12/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import "PersonTableViewCell.h"
#import "PersonController.h"

@interface PersonTableViewCell () 

@end

@implementation PersonTableViewCell

- (void)awakeFromNib {
    // Initialization code
    self.nameTextField.delegate = self;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state

}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    [self.delegate nameEntered:self.nameTextField.text inSender:self];
    
    
    return YES;
}


@end
