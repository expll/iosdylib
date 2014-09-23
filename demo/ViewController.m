//
//  ViewController.m
//  demo
//
//  Created by Tiny on 14-9-23.
//  Copyright (c) 2014年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "iosdylib.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [[[iosdylib alloc] init] print];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
