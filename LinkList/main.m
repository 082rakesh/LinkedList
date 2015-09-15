//
//  main.m
//  LinkList
//
//  Created by Ranjna Mishra on 15/09/15.
//  Copyright (c) 2015 Ranjna Mishra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "RMLinkedList.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        
        RMLinkedList *lList = [[RMLinkedList alloc] init];
        
        // add elements to LinkedList
        [lList addNode:@"1"];
        [lList addNode:@"2"];
        [lList addNode:@"3"];
        
        // add elements to LinkedList at 0th place

        [lList addNode:@"0" atIndex:0];

        
        // Print the size of the list
        NSLog(@"linkedlist size: %d", [lList size]);

        // Print the data of each node in the list
        
        for (int index = 1; index <= [lList size]; index++ ) {
            NSLog(@"lList element: %@", [lList getData:index]);
            
        }
        
        
        // Remove last node from the list
        
        [lList removeLastObject];

        
        // Print the size of the list after removing last node from the list

        NSLog(@"linkedlist size after: %d", [lList size]);
        
        // Traverse list
        
        [lList traverseList];

        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
