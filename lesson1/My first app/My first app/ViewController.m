//
//  ViewController.m
//  My first app
//
//  Created by bryant tang on 6/24/15.
//  Copyright (c) 2015 ccptm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)clickOne:(id)sender {
    //Show 1 on textfield
    _display.text = [_display.text stringByAppendingString:@"1"];
}

- (IBAction)clickTwo:(id)sender {
    _display.text = [_display.text stringByAppendingString:@"2"];
}
- (IBAction)clickThree:(id)sender {
}
- (IBAction)clickFour:(id)sender {
}
- (IBAction)clickFive:(id)sender {
}
- (IBAction)clickSix:(id)sender {
}
- (IBAction)clickSeven:(id)sender {
}
- (IBAction)clickEight:(id)sender {
}
- (IBAction)clickNine:(id)sender {
}

- (IBAction)clickPlus:(id)sender {
    store = store + [_display.text intValue];
    _display.text = @"";
}

- (IBAction)clickEquel:(id)sender {
    result = store + [_display.text intValue];
    _display.text = [NSString stringWithFormat:@"%d",result];
    store = 0;
}

- (IBAction)clickCancel:(id)sender {
    result = 0;
    _display.text = @"0";
}

@end
