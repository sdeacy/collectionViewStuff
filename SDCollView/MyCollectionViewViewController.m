//
//  MyCollectionViewViewController.m
//  SDCollView
//
//  Created by Seamus Deacy on 02/12/2014.
//  Copyright (c) 2014 Seamus Deacy. All rights reserved.
//

#import "MyCollectionViewViewController.h"
#import "MyCollectionViewCell.h"

@interface MyCollectionViewViewController ()

@end

@implementation MyCollectionViewViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _images  = [@[@"chevy_volt.jpg",
                @"mini_clubman.jpg",
                @"smart_fortwo.jpg",
                @"toyota_veneza.jpg",
                @"volvo_s60.jpg",
                  @"mini_clubman.jpg",
                  @"smart_fortwo.jpg",
                  @"toyota_veneza.jpg",
                  @"volvo_s60.jpg",
                  @"mini_clubman.jpg",
                  @"smart_fortwo.jpg",
                  @"toyota_veneza.jpg",
                  @"volvo_s60.jpg",
                  @"mini_clubman.jpg",
                  @"smart_fortwo.jpg",
                  @"toyota_veneza.jpg",
                  @"volvo_s60.jpg"] mutableCopy];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return  1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [_images count];
}

-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    MyCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MyCell" forIndexPath:indexPath];
    UIImage *image;
    long row = [indexPath row];
    image = [UIImage imageNamed:_images[row]];
    cell.imageView.image = image;
    return  cell;
}

//-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
//    
//    UIImage *image = [UIImage imageNamed:_images[[indexPath row]]];
//    return image.size;
//}

-(void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewFlowLayout *myLayout = [[UICollectionViewFlowLayout alloc] init];
    myLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    [self.collectionView setCollectionViewLayout:myLayout animated:YES];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
