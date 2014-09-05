//
//  DeviceDetailViewController.h
//  MyStoreCoreData
//
//  Created by Onkar Kulkarni on 9/2/14.
//  Copyright (c) 2014 Onkar Kulkarni. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface DeviceDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *versionTextField;
@property (strong, nonatomic) IBOutlet UITextField *companyTextField;

@property (strong) NSManagedObject *device;

- (IBAction)save:(id)sender;
- (IBAction)cancel:(id)sender;


@end
