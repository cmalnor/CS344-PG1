//
//  LL.h
//  proj1
//
//  Created by CS 344 Student on 9/2/16.
//  Copyright © 2016 CS 344 Student. All rights reserved.
//

#ifndef LL_h
#define LL_h

#import <Foundation/Foundation.h>
#include "LLN.h"

@class LLN;
@interface LL : NSObject { //LL inherits from NSObject
    LLN *head; //data members of the class
}

-(id) init; //method definitions for the class (id is a generic (void *) pointer)
-(void) print; //prints the titles of the books in the list
-(void) add:(NSString *)t; //adds new book to list
-(void) reverse; //reverses the current linked list
-(void) remove:(NSString *)t; //removes all books whose titles contain the substring in "t"
-(void) exit; //Exits the program

@end //ends interface

#endif /* LL_h */
