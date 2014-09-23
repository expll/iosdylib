//
//  ViewController.m
//  demo
//
//  Created by Tiny on 14-9-23.
//  Copyright (c) 2014年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "iosdylib.h"
#include<dlfcn.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    void *libc;
    void (*print)();
    
//    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask, YES);
//    NSString *documentsDirectory = [paths objectAtIndex:0];
//    NSString *dylibpath = [documentsDirectory stringByAppendingString:@"/iosdylib.dylib"];
    
    NSString *dylibpath = [[NSBundle mainBundle] pathForResource:@"iosdylib" ofType:@"dylib"];
    
    if(libc = dlopen([dylibpath UTF8String],RTLD_LAZY))
    {
        print = dlsym(libc, "print");
        (*print)();
        dlclose(libc);
    } else {
        NSLog( @" could not open file []: %s\n",
              dlerror());
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
