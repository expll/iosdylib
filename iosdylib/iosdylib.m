//
//  iosdylib.m
//  iosdylib
//
//  Created by Tiny on 14-9-22.
//  Copyright (c) 2014年 wanglei. All rights reserved.
//

#import "iosdylib.h"
#import <UIKit/UIKit.h>

@implementation iosdylib

void print()
{
    NSString *message1 = @"This is a dylib test!";
    NSString *message2 = @"Replaced dylib:This is a dylib test!";
    
    NSLog(@"%@", message1);
    [[[UIAlertView alloc] initWithTitle:@"Test" message:message1 delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil] show];
    
    
}

@end
