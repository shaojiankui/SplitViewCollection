//
//  CollectionCell.m
//  SplitViewCollection
//
//  Created by jakey on 14-2-21.
//  Copyright (c) 2014年 jakey. All rights reserved.
//

#import "CollectionCell.h"

@implementation CollectionCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        NSArray * nibs=[[NSBundle mainBundle] loadNibNamed:@"CollectionCell" owner:self options:nil];
        for (id obj in nibs) {
            if ([obj isKindOfClass:[CollectionCell class]]) {
                self =(CollectionCell *)obj;
            }
        }
    }
    return self;
}


@end
