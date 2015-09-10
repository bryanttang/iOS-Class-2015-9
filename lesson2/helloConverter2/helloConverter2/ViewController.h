//
//  ViewController.h
//  helloConverter2
//
//  Created by bryant on 10/9/15.
//  Copyright (c) 2015 cpttm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate, UITextViewDelegate, UITableViewDelegate>{
    
    UIButton *btn;

}

@property (strong, nonatomic) IBOutlet UITextField *input;

@property (strong, nonatomic) IBOutlet UITextField *input2;

@property (strong, nonatomic) IBOutlet UILabel *output;




@end

