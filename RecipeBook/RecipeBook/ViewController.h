//
//  ViewController.h
//  RecipeBook
//
//  Created by Onkar Kulkarni on 8/27/14.
//  Copyright (c) 2014 Onkar Kulkarni. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) IBOutlet UITableView *tableView;

@end

