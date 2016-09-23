//  Cody Malnor
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

@synthesize next = _next;

-(void) print{
    if (next)
        [next print]; //methods called on a NULL object do not run
    printf ("%s\n", [title UTF8String]);

}

-(LLN *) reverse {//puts list in reverse order
    if (!next) return self;
    LLN *nh = [next reverse];
    next->next = self;
    next = NULL;
    return nh;
}

- (void) remove:(NSString *)sub{// Removes all titles containing the string stored in sub
    if(next){
        if([next->title localizedCaseInsensitiveContainsString:sub]){
            NSString *temp = next->title;
            if(next->next){
                next = next->next;
            }else{
                next = NULL;
            }
            [self remove:sub];
        }
        [next remove:sub];
    }
}

- (void) add:(NSString *)t{// Adds book with title t (unless it already exists)
    if(next){ //If next, see if it should go before or after next
        NSComparisonResult result = [next->title caseInsensitiveCompare:t];
        if (result == NSOrderedAscending){ //If title comes before title of next, add title between next and current
            LLN *temp;
            temp = next;
            next = [LLN new];
            next->next = temp;
            next->title = t;
        }else if (result == NSOrderedSame){ //If same title already exists, don't add.
        }else if (result == NSOrderedDescending){ //If title comes after next, call again on next
            [next add:t];
        }
    }else{ //If no next, assume book goes next
        next = [LLN new];
        next->title = t;    }
}

- (NSString *) getT{
    return title;
};

- (LLN *) getNext{
    return next;
}
@end