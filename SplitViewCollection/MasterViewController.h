//
//  MasterViewController.h
//  SplitViewCollection
//
//  Created by jakey on 14-2-21.
//  Copyright (c) 2014年 jakey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MGSplitViewController.h"
@class DetailViewController;

@interface MasterViewController : UICollectionViewController<UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,MGSplitViewControllerDelegate>{
    DetailViewController *detailViewController;
}

@property (nonatomic, retain)  DetailViewController *detailViewController;


@end
