//
//  PersonTableViewCell.h
//  PairRandomizer
//
//  Created by Michelle Tessier on 8/12/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PersonTableViewCellDelegate;

@interface PersonTableViewCell : UITableViewCell <UITextFieldDelegate>


@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (nonatomic, weak) id <PersonTableViewCellDelegate> delegate;


@end

@protocol PersonTableViewCellDelegate <NSObject>

-(void)nameEntered:(NSString *)name inSender:(PersonTableViewCell *)sender;

@end
