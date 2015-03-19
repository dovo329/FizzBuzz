//
//  AppDelegate.m
//  FizzBuzz-Objc
//
//  Created by Joshua Howland on 8/22/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // Insert code here
    //NSLog(@"checkpoint a");
    /*int testNum = 123456;
    
    NSLog(@"isBuzzed for %d is %d", testNum, [self isBuzzed:testNum]);
    NSLog(@"fizzCheck for %d is %d", testNum, [self fizzCheck:testNum]);

    
    testNum = 124567;
    
    NSLog(@"isBuzzed for %d is %d", testNum, [self isBuzzed:testNum]);
    NSLog(@"fizzCheck for %d is %d", testNum, [self fizzCheck:testNum]);
    
    testNum = 123467;
    
    NSLog(@"isBuzzed for %d is %d", testNum, [self isBuzzed:testNum]);
    NSLog(@"fizzCheck for %d is %d", testNum, [self fizzCheck:testNum]);
    */
    
    for (int testNum=1; testNum <= 100; testNum++)
    {
        [self checkFizzBuzz:testNum];
    }
    
    return YES;
}

- (bool)containsThisNumber:(int)searchNum numToSearch:(int)numToSearch;
{
    int ax = numToSearch;
    int rem = 0;
    NSMutableArray *digits = [[NSMutableArray alloc] init];
    
    //NSLog(@"checkpoint f;");
    while (ax > 0)
    {
        rem = ax % 10;
        NSNumber *nsRem = [NSNumber numberWithInt:rem];
        
        [digits addObject:nsRem];
        ax /= 10;
    }
    
    int i=0;
    for (NSNumber *digit in digits)
    {
        //NSLog(@"digit[%d]==%i", i++, [digit intValue]);
        if ([digit intValue] == searchNum)
        {
            return true;
        }
    }
    return false;
}

- (bool)isBuzzed:(int)arg;
{
    //NSLog(@"checkpoint b; arg is %d", arg);
    if (arg % 3 == 0)
    {
        //NSLog(@"checkpoint c;");
        return true;
    } else if ([self containsThisNumber:3
                     numToSearch:arg])
    {
        
        //NSLog(@"checkpoint d;");
        return true;
    } else
    {
        //NSLog(@"checkpoint e;");
        return false;
    }
}

- (bool)fizzCheck:(int)arg;
{
    //NSLog(@"checkpoint b; arg is %d", arg);
    if (arg % 5 == 0)
    {
        //NSLog(@"checkpoint c;");
        return true;
    } else if ([self containsThisNumber:5
                            numToSearch:arg])
    {
        
        //NSLog(@"checkpoint d;");
        return true;
    } else
    {
        //NSLog(@"checkpoint e;");
        return false;
    }
}

- (void)checkFizzBuzz:(int)testNum;
{
    bool isBuzzed_flag = [self isBuzzed:testNum];
    bool isFizzed_flag = [self fizzCheck:testNum];
    
    if (isBuzzed_flag && isFizzed_flag)
    {
        NSLog(@"%d is fizzbuzzed", testNum);
    }
    else if (isBuzzed_flag)
    {
        NSLog(@"%d is buzzed", testNum);
    } else if (isFizzed_flag)
    {
        NSLog(@"%d is fizzed", testNum);
    } else {
        
        NSLog(@"%d is neither fizzed nor buzzed", testNum);
    }

}

@end
