//
//  AZLine.m
//  LoginExample
//
//  Created by Eslem Alzate on 21/07/14.
//  Copyright (c) 2014 Alzate Zabala S.L. All rights reserved.
//

#import "AZLine.h"

@implementation AZLine

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)drawRect:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextSetRGBFillColor(ctx, 0.0, 0.0, 1.0, 1.0);
    rect = CGRectMake(20, 20, 40, 40);
    CGContextFillRect(ctx, rect);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
