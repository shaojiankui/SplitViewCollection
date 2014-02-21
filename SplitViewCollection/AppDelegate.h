//
//  AppDelegate.h
//  SplitViewCollection
//
//  Created by jakey on 14-2-21.
//  Copyright (c) 2014年 jakey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MGSplitViewController.h"

@class MasterViewController;
@class DetailViewController;
@class MGSplitViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    MGSplitViewController *splitViewController;
    MasterViewController *masterViewController;
    DetailViewController *detailViewController;
}
@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong)  MGSplitViewController *splitViewController;
@property (nonatomic, strong)  MasterViewController *masterViewController;
@property (nonatomic, retain)  DetailViewController *detailViewController;
@end
