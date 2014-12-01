//
//  RETouchPassingView.m
//  RESideMenuStoryboardsExample
//
//  Created by Tadej Razboršek on 1. 12. 14.
//  Copyright (c) 2014 Roman Efimov. All rights reserved.
//

#import "RETouchPassingView.h"

@implementation RETouchPassingView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(id)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    // Pass touches on self through, but not on subviews.
    id hitView = [super hitTest:point withEvent:event];
    if (hitView == self) return nil;
    else return hitView;
}

@end
