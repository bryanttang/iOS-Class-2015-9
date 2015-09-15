//
//  ViewController.m
//  SpaceBattle
//
//  Created by bryant on 15/9/15.
//  Copyright (c) 2015 cpttm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UISwipeGestureRecognizer *swipe_l = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(respondsToSwipe:)];
    
    swipe_l.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:swipe_l];
    
    UISwipeGestureRecognizer *swipe_r = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(respondsToSwipe:)];
    
    swipe_r.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:swipe_r];
    
    
    UISwipeGestureRecognizer *swipe_f = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(respondsToSwipe:)];
    
    swipe_f.direction = UISwipeGestureRecognizerDirectionUp;
    [self.view addGestureRecognizer:swipe_f];
    
    UISwipeGestureRecognizer *swipe_b = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(respondsToSwipe:)];
    
    swipe_b.direction = UISwipeGestureRecognizerDirectionDown;
    [self.view addGestureRecognizer:swipe_b];
    
    spaceShip = [[UIImageView alloc] initWithFrame:CGRectMake(150, 420, 120*225/523, 120)];
    spaceShip.userInteractionEnabled = YES;
    spaceShip.image = [UIImage imageNamed:@"ship2_b"];
    
    
    UILongPressGestureRecognizer *fire = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(respondsToLongPress:)];
    fire.minimumPressDuration = 0.5;
    
    [spaceShip addGestureRecognizer:fire];
    
    
}

- (void)viewDidAppear:(BOOL)animated{

     [self.view addSubview:spaceShip];
    
}


- (void)respondsToLongPress:(UILongPressGestureRecognizer*)longPress{
    if (longPress.state == UIGestureRecognizerStateBegan) {
        NSLog(@"LongPress");
        //Reload
        UIImageView *bullet = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bullet"]];
        bullet.frame = CGRectMake(spaceShip.frame.origin.x + spaceShip.frame.size.width/2 - 10, spaceShip.frame.origin.y + 5, 20, 10);
        
        [self.view addSubview:bullet];
        
        
        //Fire
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
            bullet.transform = CGAffineTransformMakeTranslation(0, -bullet.frame.origin.y);
        } completion:^(BOOL finished) {
            [bullet removeFromSuperview];
        }];
    }
    
    
    
}


- (void) respondsToSwipe:(UISwipeGestureRecognizer*)swipe{
    NSLog(@"Swipe");
    
    if (swipe.direction == UISwipeGestureRecognizerDirectionLeft) {
        
        [UIView animateWithDuration:0.3 animations:^{
            spaceShip.image = [UIImage imageNamed:@"ship2_l"];
        }];
        
        
        
        [UIView animateWithDuration:0.5
                              delay:0.0
                            options:UIViewAnimationOptionCurveEaseOut
                         animations:^{
                             spaceShip.transform = CGAffineTransformTranslate(spaceShip.transform, -40, 0) ;
                            
                         } completion:^(BOOL finished) {
                             spaceShip.image = [UIImage imageNamed:@"ship2_b"];
                         }];
        
    }else if (swipe.direction == UISwipeGestureRecognizerDirectionRight){
        [UIView animateWithDuration:0.3 animations:^{
            spaceShip.image = [UIImage imageNamed:@"ship2_r"];
        }];
        
        [UIView animateWithDuration:0.5
                              delay:0.0
                            options:UIViewAnimationOptionCurveEaseOut
                         animations:^{
                             spaceShip.transform = CGAffineTransformTranslate(spaceShip.transform, 40, 0) ;
                             
                         } completion:^(BOOL finished) {
                             spaceShip.image = [UIImage imageNamed:@"ship2_b"];
                         }];
    }else if (swipe.direction == UISwipeGestureRecognizerDirectionUp){
        
        [UIView animateWithDuration:0.3 animations:^{
            spaceShip.image = [UIImage imageNamed:@"ship2_f"];
        }];
        
        [UIView animateWithDuration:0.5
                              delay:0.0
                            options:UIViewAnimationOptionCurveEaseOut
                         animations:^{
                             spaceShip.center = CGPointMake(spaceShip.center.x, spaceShip.center.y - 40);
                             
                         } completion:^(BOOL finished) {
                             spaceShip.image = [UIImage imageNamed:@"ship2_b"];
                             
                         }];

    }else if (swipe.direction == UISwipeGestureRecognizerDirectionDown){
        
        [UIView animateWithDuration:0.3 animations:^{
            spaceShip.image = [UIImage imageNamed:@"ship2"];
        }];
        
        [UIView animateWithDuration:0.5
                              delay:0.0
                            options:UIViewAnimationOptionCurveEaseOut
                         animations:^{
                             spaceShip.center = CGPointMake(spaceShip.center.x, spaceShip.center.y + 40);
                             
                         } completion:^(BOOL finished) {
                             spaceShip.image = [UIImage imageNamed:@"ship2_b"];
                             
                         }];
    }
    

    
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
