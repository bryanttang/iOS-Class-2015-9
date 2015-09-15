//
//  ViewController.m
//  helloCalender
//
//  Created by bryant on 16/7/15.
//  Copyright (c) 2015 cpttm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    _datePaper_ary  = [[NSMutableArray alloc] init];  //== [NSMutableArray new]
    
    for (int i=0; i<30; i++) {
        
        //Background
        UIImageView *dateBackgound = [[UIImageView alloc] initWithImage: [UIImage imageNamed:@"calender"]];
        dateBackgound.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
        dateBackgound.backgroundColor = [UIColor colorWithWhite:0.7 alpha:1.0];
        
        //Number
        UILabel *number = [[UILabel alloc] initWithFrame:CGRectMake(0, 80, dateBackgound.frame.size.width, 350)];
        number.text = [NSString stringWithFormat:@"%d", i+1];
        number.textColor = [UIColor redColor];
        number.font = [UIFont fontWithName:@"Helvetica" size:250.0];
        number.textAlignment = NSTextAlignmentCenter;
       
        [dateBackgound addSubview:number];
        
        [_datePaper_ary addObject:dateBackgound];
    }
    
    _curDate = 0;
    
    UIView *firstDateBackground = [_datePaper_ary objectAtIndex:0];
    
    [self.view addSubview: firstDateBackground];
    
    //Add Gesture
    UISwipeGestureRecognizer *upSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(respondsToSwipe:)];
    
    upSwipe.direction = UISwipeGestureRecognizerDirectionUp;
    
    [self.view addGestureRecognizer:upSwipe];
}

- (void)respondsToSwipe:(UISwipeGestureRecognizer*) swipe{
    
    if (swipe.direction == UISwipeGestureRecognizerDirectionUp) {
        
        UIView *fromView = [_datePaper_ary objectAtIndex:_curDate];
        
        UIView *toView = [_datePaper_ary objectAtIndex:++_curDate];
        
        //Transition Animated
        [UIView transitionFromView:fromView
                            toView:toView
                          duration:0.5
                           options:UIViewAnimationOptionTransitionCurlUp
                        completion:^(BOOL finished) {
                        }];
        
        //_curDate = _curDate + 1;
    }

}





















- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
