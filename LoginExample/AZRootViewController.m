//
//  AZRootViewController.m
//  LoginExample
//
//  Created by Eslem Alzate on 21/07/14.
//  Copyright (c) 2014 Alzate Zabala S.L. All rights reserved.
//   <UIKit/UIKit.h>

#import "AZRootViewController.h"

@interface AZRootViewController ()
@end

@implementation AZRootViewController

- (IBAction)click_send:(id)sender {
    
    NSInteger success=0;
    
    @try {
        
        if([[self.user_txt text] isEqualToString:@""] || [[self.pass_txt text] isEqualToString:@""] ){
            [self alertStatus:@"Enter Data" :@"Fail" :0];
        }else{
            NSString *post = [[NSString alloc] initWithFormat:@"username=%@&pass=%@", [self.user_txt text],  [self.pass_txt text]];
            NSLog(@"POSTDATA=%@",post );
            
            NSURL *url = [NSURL URLWithString:@"http://flechazo.alzatezabala.com/requests/testLib.php"];
            NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
            
            NSString *postLength = [NSString stringWithFormat:@"%lu", (unsigned long) [postData length]];
            
            NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
            
            request.URL=url;
            request.HTTPMethod=@"POST";
            request.HTTPBody=postData;
            
            [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
            [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
            [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
            
            
            //[NSURLRequest setAllowsAnyHTTPSCertificate:YES forHost:[url host]];
            
            NSError *error= [[NSError alloc] init];
            NSHTTPURLResponse *response = nil;
            NSData * urlData= [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
            
            NSLog(@"Response code: %ld", (long)[response statusCode]);
            if([response statusCode ]>=200 && [response statusCode]<300 ){
                NSString *responseData =[[NSString alloc] initWithData:urlData encoding:NSUTF8StringEncoding];
                NSLog(@"Response==%@", responseData);
                [self performSegueWithIdentifier:@"login_success" sender:self];
            }
            else{
                [self alertStatus:@"Error Login" :@"Fail" :0];
            }
        }

    }
    @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
        [self alertStatus:@"Error Login" :@"Fail" :0];
    }
    
        
}

-(void) alertStatus:(NSString * )msg :(NSString *)title :(int)tag{
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:msg delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
    alertView.tag=tag;
    [alertView show];
    
}


- (IBAction)backTap:(id)sender {
    
    [self.view endEditing:YES];
}

-(BOOL) textFieldShouldReturn:(UITextField * ) txtField{
    [txtField resignFirstResponder];
    return YES;
}
@end
