//
//  RecipeDetailViewController.m
//  RecipeBook
//
//  Created by Onkar Kulkarni on 8/30/14.
//  Copyright (c) 2014 Onkar Kulkarni. All rights reserved.
//

#import "RecipeDetailViewController.h"

@implementation RecipeDetailViewController

@synthesize recipeLabel;
@synthesize recipeName;

-(void) viewDidLoad{
    
    [super viewDidLoad];
    
    recipeLabel.text = recipeName;
    
}

@end
