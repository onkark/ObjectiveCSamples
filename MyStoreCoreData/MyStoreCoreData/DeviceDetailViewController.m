//
//  DeviceDetailViewController.m
//  MyStoreCoreData
//
//  Created by Onkar Kulkarni on 9/2/14.
//  Copyright (c) 2014 Onkar Kulkarni. All rights reserved.
//

#import "DeviceDetailViewController.h"


@implementation DeviceDetailViewController

//@synthesize nameTextField;
//@synthesize versionTextField;
//@synthesize companyTextField;

@synthesize device;


-(void) viewDidLoad {
    
    [super viewDidLoad];
    
    if(self.device) {
        [self.nameTextField setText:[self.device valueForKey:@"name"]];
        [self.versionTextField setText:[self.device valueForKey:@"version"]];
        [self.companyTextField setText:[self.device valueForKey:@"company"]];
        
    }
}

- (NSManagedObjectContext *) managedObjectContext {
    NSManagedObjectContext *context = nil;
    
    id delegate = [[UIApplication sharedApplication] delegate];
    
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    
    return context;
}


- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

-(IBAction)save:(id)sender {
    
    NSManagedObjectContext *context = [self managedObjectContext];
    
    if(self.device==nil) {
        //Create new managed object
        self.device = [NSEntityDescription insertNewObjectForEntityForName:@"Decive" inManagedObjectContext:context];
    }
    
    //NSManagedObject *newDevice = [NSEntityDescription insertNewObjectForEntityForName:@"Decive" inManagedObjectContext:context];
    [self.device setValue:self.nameTextField.text forKey:@"name"];
    [self.device setValue:self.versionTextField.text forKey:@"version"];
    [self.device setValue:self.companyTextField.text forKey:@"company"];
    
    NSError *error = nil;
    
    if (![context save:&error]) {
        NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
