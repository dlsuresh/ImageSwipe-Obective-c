//
//  ViewController.m
//  ImageSwipe
//
//  Created by Suresh on 2/15/17.
//  Copyright © 2017 Suresh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong , nonatomic)NSArray *imgArray;

//-(void )SwipeGestureLeft:(UISwipeGestureRecognizer *)Gesture;
//-(void )SwipeGestureRight:(UISwipeGestureRecognizer *)Gesture;

@end

@implementation ViewController{
    NSInteger index;;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imgArray = @[@"image1.jpg",@"image2.jpg",@"images3.jpg",@"images4.jpg"];
    index=0;
//    self.img.image = [UIImage imageNamed:[self.imgArray objectAtIndex:index]];
//    UISwipeGestureRecognizer *RightSwipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(SwipeGestureRight:)];
//    RightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
//    UISwipeGestureRecognizer *LeftSwipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(SwipeGestureLeft:)];
//    LeftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
//
//    [self.img addGestureRecognizer:RightSwipe];
    //[self.img addGestureRecognizer:LeftSwipe];
    
}

-(void)viewDidAppear:(BOOL)animated{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];


}
- (IBAction)SwipeRight:(UISwipeGestureRecognizer *)sender {
    index++;
    if (index > self.imgArray.count-1) {
        index=0;
    }
    
    self.img.image = [UIImage imageNamed:[self.imgArray objectAtIndex:index]];
    

}
- (IBAction)SwipeLeft:(UISwipeGestureRecognizer *)sender {
    index--;

    if (index < 0) {
        index = self.imgArray.count-1;
    }
    if (index > _imgArray.count-1) {
        index =0;
    }
    self.img.image = [UIImage imageNamed:[self.imgArray objectAtIndex:index]];
    }

//-(void )SwipeGestureLeft:(UISwipeGestureRecognizer *)Gesture{
//    if (index < 0) {
//        index = self.imgArray.count-1;
//    }
//    self.img.image = [UIImage imageNamed:[self.imgArray objectAtIndex:index]];
//    index--;
//}
//-(void )SwipeGestureRight:(UISwipeGestureRecognizer *)Gesture{
//    if (index > self.imgArray.count-1) {
//        index=0;
//    }
//    
//    self.img.image = [UIImage imageNamed:[self.imgArray objectAtIndex:index]];
//    index++;
//
//}


@end
