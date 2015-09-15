//
//  Node.m
//  SortingTest
//
//  Created by Kumar Mishra, R. F. on 06/07/15.
//  Copyright (c) 2015 Ranjna Mishra. All rights reserved.
//

#import "Node.h"



@implementation Node


- (instancetype) init {
    self = [super init];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (instancetype) init:(id) dataValue{
    self = [self init];
    self.data = dataValue;
    self.next = nil;
    return  self;
    
}

- (instancetype) init:(id) dataValue nextNode:(Node *)nextValue{
    self = [self init];
    self.next = nextValue;
    self.data = dataValue;
    
    return self;
    
}

/*
 INITNODE - create a new NODE for the linked list.  Passes in new value (data) for the new node.
 */
- (instancetype) initNode:(NSString *) newData {
    self = [self init];
    self.data = newData;
    return self;
}

@end
