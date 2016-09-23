//  Cody Malnor
//  main.m
//  proj1
//
//  Created by CS 344 Student on 9/2/16.
//  Copyright © 2016 CS 344 Student. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LL.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char *name;
        size_t bufsize = 60;
        size_t read;
        NSString *command;
        LL *theList = [LL new];
        while(true){
            read = getline(&name, &bufsize, stdin);// get a line from user
            command = [NSString stringWithUTF8String:name];// convert value to an NSString
            if ([command caseInsensitiveCompare:@"Exit\n"] == NSOrderedSame){// If string is a case-insensitive version of "exit", exit the program
                exit(0);
            }else if ([command caseInsensitiveCompare:@"Print\n"] == NSOrderedSame){// If string is a case-insensitive version of "print", print all books
                [theList print];
                
            }else if ([command localizedCaseInsensitiveContainsString:@"Add \""]){// If command starts with case-insensitive version of "add "", then add book title to list
                NSString *title = [command substringFromIndex:5];
                title = [title substringToIndex:[title length]-2];
                [theList add: title];
            }else if ([command localizedCaseInsensitiveContainsString:@"Remove \""]){// If command starts with case-insensitive version of "remove "", then remove title from list
                NSString *title = [command substringFromIndex:8];
                title = [title substringToIndex:[title length]-2];
                [theList remove: title];
            }else// If command is not recognized, print and wait for another command
                NSLog(@"Command not recognized.");
        }
        
    }
    return 0;
}
