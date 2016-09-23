//  Cody Malnor
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
    if(head){
        NSComparisonResult result = [head.getT caseInsensitiveCompare:t];
        if(result == NSOrderedAscending){// If title comes before head, need new head
            LLN *temp = head;
            head = [[LLN alloc] init:t next:temp];
        }else if(result == NSOrderedSame){// If title is in the head, do nothing
        }
        else{ //If there is a head and title comes after it, call head's add method
            [head add:t];
        }
    }else{ // If there is no head, simply make a new head
        head = [[LLN alloc] init:t next:NULL]; //head = new LLN (s, head);
    }
}

-(void) reverse{
    if (head) head = [head reverse];
}

-(void) remove:(NSString *)t {
    if (head) {
        if([t  isEqual: @""]){
            head = NULL;
        }else if([head.getT localizedCaseInsensitiveContainsString:t]){// head needs to be removed
            if(head.getNext){// if there are other elements in the linked list, set head to the next element
                head = head.getNext;
                [self remove:t];// call remove again on this linked list with the new head
            }else{// if nothing else, just set head to NULL
                head = NULL;
            }
        }else{// head does not need to be removed, check other nodes (if any)
            [head remove:t];
        }
    }
}
-(void) exit{
    exit(0);
}
@end
