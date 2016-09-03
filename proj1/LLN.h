//
//  LLN.h
//  proj1
//
//  Created by CS 344 Student on 9/2/16.
//  Copyright © 2016 CS 344 Student. All rights reserved.
//

#ifndef LLN_h
#define LLN_h

#import <Foundation/Foundation.h>

@interface LLN : NSObject {
    NSString * title;
    LLN * next;
}

-(id) init:(NSString *)s next:(LLN*)n;

-(void) print; //print values of list in order

-(LLN *) reverse; //return head of the reversed list
#endif /* LLN_h */

@end