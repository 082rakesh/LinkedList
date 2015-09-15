//
//  RMLinkedList.m
//  SortingTest
//
//  Created by Kumar Mishra, R. F. on 07/07/15.
//  Copyright (c) 2015 Ranjna Mishra. All rights reserved.
//

#import "RMLinkedList.h"



@interface RMLinkedList (){
   
    int listCount;
}

@end


@implementation RMLinkedList

- (instancetype) init {
    self = [super init];
    if (self) {
        // Custom initialization
        _head  = [[Node alloc] init];
        listCount = 0;
    }
    return self;
}

// appends the specified element to the end of this list.

-(void)addNode:(id)data{
    
    Node *tempNode = [[Node alloc] init:data];
    Node *currentNode = _head;
    
    // starting at the head node, crawl to the end of the list

    while (currentNode.next != nil) {
        currentNode = currentNode.next;
    }
    
    // the last node's "next" reference set to our new node

    [currentNode setNext:tempNode];
    listCount++; // increment the number of elements variable
}


// inserts the specified element at the specified position in this list
-(void)addNode:(id)data atIndex:(int)index{
    Node *tempNode = [[Node alloc] init:data];
    Node *currentNode = _head;
    
    // crawl to the requested index or the last element in the list,
    // whichever comes first
    
    for (int i = 1; i < index && currentNode.next != nil; i++) {
        currentNode = currentNode.next;
    }
    
    // set the new node's next-node reference to this node's next-node
    // reference
    [tempNode setNext:currentNode.next];
    // now set this node's next-node reference to the new node
    [currentNode setNext:tempNode];
    listCount++;// increment the number of elements variable

}

// returns the element at the specified position in this list.

-(id)getData:(int)index{
    
    // index must be 1 or higher
    if (index <= 0)
        return nil;
    
    Node *current = _head.next;
    
    
    for (int i = 1; i < index; i++) {
        if (current.next == nil)
            return nil;
        
        current = current.next;
    }
    return current.data;

}

// returns the number of elements in this list.

-(int)size{
    return listCount;
}

// Remove last object from list
-(void)removeLastObject{
    Node *current = _head;
    Node *previous = nil;
    
    if(current != nil){
        while (current.next) {
            previous = current;
            current = current.next;
        }
        
        previous.next = nil;
        current = previous;
        listCount--;
    }
}

// Traverse list
- (void) traverseList {
    Node *temp = _head;    // Can't use 'self ='; so substituting currPtr;
    
    if(temp){
        while (temp.next) {
            temp = temp.next;
            NSLog(@"value: %@", temp.data);
        }
    }
}



@end

