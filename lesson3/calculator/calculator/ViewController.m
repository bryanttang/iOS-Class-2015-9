//
//  ViewController.m
//  calculator
//
//  Created by bryant on 8/7/15.
//  Copyright (c) 2015 cpttm. All rights reserved.
//

#import "ViewController.h"
#import "calculator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    calculator *cal = [calculator new];
    //  (1+2+3+4+5)
    [cal add:[cal add:1 :2] :3];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
