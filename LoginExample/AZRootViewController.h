//
//  AZRootViewController.h
//  LoginExample
//
//  Created by Eslem Alzate on 21/07/14.
//  Copyright (c) 2014 Alzate Zabala S.L. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AZRootViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *user_txt;
@property (weak, nonatomic) IBOutlet UITextField *pass_txt;
- (IBAction)click_send:(id)sender;

- (IBAction)backTap:(id)sender;

@end
