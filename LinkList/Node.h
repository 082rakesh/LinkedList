//
//  Node.h
//  SortingTest
//
//  Created by Kumar Mishra, R. F. on 06/07/15.
//  Copyright (c) 2015 Ranjna Mishra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property id data;
@property Node *next;

- (instancetype) init;
- (instancetype) init:(id) dataValue;
- (instancetype) init:(id) dataValue nextNode:(Node *)nextValue;

@end
