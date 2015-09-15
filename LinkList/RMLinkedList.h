//
//  RMLinkedList.h
//  SortingTest
//
//  Created by Kumar Mishra, R. F. on 07/07/15.
//  Copyright (c) 2015 Ranjna Mishra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"


@interface RMLinkedList : NSObject

@property     Node *head;

-(void)addNode:(id)data;
-(void)addNode:(id)data atIndex:(int)index;
-(id)getData:(int)index;
-(int)size;
- (void) traverseList;
-(void)removeLastObject;
@end
