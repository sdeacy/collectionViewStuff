//
//  MyCollectionViewViewController.h
//  SDCollView
//
//  Created by Seamus Deacy on 02/12/2014.
//  Copyright (c) 2014 Seamus Deacy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCollectionViewViewController : UICollectionViewController<UICollectionViewDataSource, UICollectionViewDelegate>

@property (strong, nonatomic) NSMutableArray *images;

@end
