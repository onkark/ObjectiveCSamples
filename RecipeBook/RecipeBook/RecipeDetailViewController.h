//
//  RecipeDetailViewController.h
//  RecipeBook
//
//  Created by Onkar Kulkarni on 8/30/14.
//  Copyright (c) 2014 Onkar Kulkarni. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeDetailViewController : UIViewController

@property (nonatomic, strong) IBOutlet UILabel *recipeLabel;
@property (nonatomic, strong) NSString *recipeName;

@end
