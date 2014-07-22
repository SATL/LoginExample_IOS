//
//  AZModelController.h
//  LoginExample
//
//  Created by Eslem Alzate on 21/07/14.
//  Copyright (c) 2014 Alzate Zabala S.L. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AZDataViewController;

@interface AZModelController : NSObject <UIPageViewControllerDataSource>

- (AZDataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(AZDataViewController *)viewController;

@end
