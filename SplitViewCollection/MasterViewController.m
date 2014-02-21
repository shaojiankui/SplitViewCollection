//
//  MasterViewController.m
//  SplitViewCollection
//
//  Created by jakey on 14-2-21.
//  Copyright (c) 2014年 jakey. All rights reserved.
//

#import "MasterViewController.h"
#import "CollectionCell.h"
#import "AppDelegate.h"

NSString *kCellID = @"cellID";

@interface MasterViewController ()
{
    Boolean isGrid;
    CGRect rect;
    CGFloat position;
}
@end

@implementation MasterViewController
@synthesize detailViewController;

- (void)viewDidLoad
{
    [super viewDidLoad];
    isGrid = NO;
    [self.collectionView registerClass:[CollectionCell class] forCellWithReuseIdentifier:kCellID];
    self.splitViewController.delegate = self;
    

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

#pragma mark -
#pragma mark Collection view data source

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionVie
{
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    
    return 120;
    //return 32;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionCell *cell = (CollectionCell *)[collectionView dequeueReusableCellWithReuseIdentifier:kCellID forIndexPath:indexPath];
    NSString *imageToLoad = [NSString stringWithFormat:@"%d.JPG", indexPath.row];
    cell.label.text = [NSString stringWithFormat:@"{%d}",indexPath.row];
    cell.imageView.image = [UIImage imageNamed:imageToLoad];
    return cell;
    
}
- (void)splitViewController:(MGSplitViewController*)svc willMoveSplitToPosition:(float)position{
    
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    AppDelegate *app = [[UIApplication sharedApplication] delegate];
    UICollectionViewFlowLayout *flowLayout = nil;
    if (isGrid) {
        //rect =  CGRectMake(collectionView.frame.origin.x,0,700,collectionView.frame.size.height);
        position = 700;
        flowLayout=[[UICollectionViewFlowLayout alloc] init];
        flowLayout.itemSize=CGSizeMake(100,100);
        [flowLayout setScrollDirection:UICollectionViewScrollDirectionHorizontal];


    }else{
        //rect =  CGRectMake(collectionView.frame.origin.x,200,collectionView.frame.size.height);
        position = 200;
        flowLayout=[[UICollectionViewFlowLayout alloc] init];
        flowLayout.itemSize=CGSizeMake(100,100);
         [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];

    }

    [UIView animateWithDuration:0.5 animations:^{
        app.splitViewController.splitPosition = position;
        //collectionView.frame = rect;
        [collectionView setCollectionViewLayout:flowLayout];

        
    } completion:^(BOOL finished) {

       // [collectionView reloadSections:[NSIndexSet indexSetWithIndex:indexPath.section]];
//        [self setScrollDirection:UICollectionViewScrollDirectionHorizontal];
        
     
    }];
    isGrid = !isGrid;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
