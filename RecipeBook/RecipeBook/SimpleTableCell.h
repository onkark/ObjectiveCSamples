//
//  SimpleTableCell.h
//  HelloWorld
//
//  Created by Onkar Kulkarni on 8/24/14.
//  Copyright (c) 2014 Onkar Kulkarni. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *prepTimeLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;

@end
