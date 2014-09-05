//
//  ViewController.h
//  MyStoreCoreData
//
//  Created by Onkar Kulkarni on 9/2/14.
//  Copyright (c) 2014 Onkar Kulkarni. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"


@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (strong) NSMutableArray *devices;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

