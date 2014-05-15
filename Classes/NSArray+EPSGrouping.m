//
//  NSArray+EPSGrouping.m
//  NSArrayGroupingExtensions
//
//  Created by Peter Stuart on 5/15/14.
//  Copyright (c) 2014 Electric Peel, LLC. All rights reserved.
//

#import "NSArray+EPSGrouping.h"

@implementation NSArray (EPSGrouping)

- (NSDictionary *)eps_groupsByKeyPath:(NSString *)key {
    NSMutableDictionary *groups = [NSMutableDictionary new];
    
    for (id object in self) {
        id value = [object valueForKeyPath:key];
        
        if (groups[value] == nil) {
            groups[value] = @[];
        }
        
        NSArray *existingValues = groups[value];
        groups[value] = [existingValues arrayByAddingObject:object];
    }
    
    return groups;
}

- (NSArray *)eps_sortedGroupsByKeyPath:(NSString *)key keySortDescriptors:(NSArray *)keySortDescriptors contentSortDescriptors:(NSArray *)contentSortDescriptors {
    NSArray *sortedContents = [self sortedArrayUsingDescriptors:contentSortDescriptors];
    NSDictionary *groupsDictionary = [sortedContents eps_groupsByKeyPath:key];
    
    NSMutableArray *sortedGroups = [NSMutableArray new];
    NSArray *sortedKeys = [groupsDictionary.allKeys sortedArrayUsingDescriptors:keySortDescriptors];
    
    for (id aKey in sortedKeys) {
        [sortedGroups addObject:groupsDictionary[aKey]];
    }
    
    return sortedGroups;
}

@end
