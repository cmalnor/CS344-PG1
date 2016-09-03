//
//  main.m
//  proj1
//
//  Created by CS 344 Student on 9/2/16.
//  Copyright © 2016 CS 344 Student. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        char name[50];
        NSString *command;
        NSLog(@"Hello, World!");
        while(true){
            printf("Enter a command: ");
            scanf("%[^\n]s", name);
            command = [NSString stringWithUTF8String:name];
            if ([command hasPrefix:@"Exit"]){
                exit(0);
            }
        }
        
    }
    return 0;
}
