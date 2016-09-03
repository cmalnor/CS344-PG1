//
//  LLN.m
//  proj1
//
//  Created by CS 344 Student on 9/2/16.
//  Copyright © 2016 CS 344 Student. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "LLN.h"

@implementation LLN

-(id) init:(NSString *)t next:(LLN *)n {
    
    title = t;
    next = n;
    return self;
}

-(void) print{
    printf ("%s\n", [title UTF8String]);
    if (next)
        [next print]; //methods called on a NULL object do not run
}

-(LLN *) reverse {
    if (!next) return self;
    LLN *nh = [next reverse];
    next->next = self;
    next = NULL;
    return nh;
}

@end