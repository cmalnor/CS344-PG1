//
//  LL.m
//  proj1
//
//  Created by CS 344 Student on 9/2/16.
//  Copyright © 2016 CS 344 Student. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LL.h"
#import "LLN.h"

@implementation LL

-(id) init{
    head = NULL;
    return self; //"self" means "this"
}

-(void) print {
    if (head) [head print];
    printf ("\n");
}

-(void) add:(NSString *)t {
    head = [[LLN alloc] init:t next:head]; //head = new LLN (s, head);
}

-(void) reverse{
    if (head) head = [head reverse];
}

-(void) remove:(NSString *)t {
    
}
-(void) exit{
    exit(0);
}
@end
