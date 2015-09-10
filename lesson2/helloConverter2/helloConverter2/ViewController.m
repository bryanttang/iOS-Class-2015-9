//
//  ViewController.m
//  helloConverter2
//
//  Created by bryant on 10/9/15.
//  Copyright (c) 2015 cpttm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _input.delegate = self;
    _input2.delegate = self;

    
    btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 200, 60)];
    [btn setTitle:@"My button" forState:UIControlStateNormal];
    btn.backgroundColor= [UIColor blueColor];
    [btn addTarget:self action:@selector(clickMyButton:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:btn];
    
    UILabel *mylabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 380, 100, 30)];
    mylabel.text = @"my label";
    
    [self.view addSubview:mylabel];
    
    
}

- (void)clickMyButton:(id)sender{
    NSLog(@"Click My Button");
}

- (IBAction)convert:(id)sender {
    
    //Convert USD To MOP
    double usd;
    usd = _input.text.doubleValue;
    
    double result = [self convertUSD:usd];
    _output.text = [NSString stringWithFormat:@"%.2f", result];
    
    
    
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField   {
    textField.textColor = [UIColor redColor];
    
    return YES;
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    NSLog(@"Press Enter");
    [textField resignFirstResponder];
    
    //Convert USD To MOP
    double usd;
    usd = _input.text.doubleValue;
    
    double result = [self convertUSD:usd];
    _output.text = [NSString stringWithFormat:@"%.2f", result];
    
    textField.textColor = [UIColor blackColor];
    
    return YES;
}





- (double) convertUSD:(double)usd{
    
    double mop;
    mop = usd * 7.891;
    
    return mop;
}















- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
