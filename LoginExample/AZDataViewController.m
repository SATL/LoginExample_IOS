//
//  AZDataViewController.m
//  LoginExample
//
//  Created by Eslem Alzate on 21/07/14.
//  Copyright (c) 2014 Alzate Zabala S.L. All rights reserved.
//

#import "AZDataViewController.h"

@interface AZDataViewController ()

@end

@implementation AZDataViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.dataLabel.text = [self.dataObject description];
}

@end
