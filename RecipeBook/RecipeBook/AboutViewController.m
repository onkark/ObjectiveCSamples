//
//  AboutViewController.m
//  RecipeBook
//
//  Created by Onkar Kulkarni on 8/30/14.
//  Copyright (c) 2014 Onkar Kulkarni. All rights reserved.
//

#import "AboutViewController.h"

@implementation AboutViewController

@synthesize webView;

- (void) viewDidLoad{
    
    [super viewDidLoad];
    
    // Add code to load web content in UIWebView
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"about.html" ofType:nil]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    
}

@end
