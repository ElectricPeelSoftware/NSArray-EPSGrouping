//
//  NSArray+EPSGrouping.h
//  NSArrayGroupingExtensions
//
//  Created by Peter Stuart on 5/15/14.
//  Copyright (c) 2014 Electric Peel, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (EPSGrouping)

- (NSDictionary *)eps_groupsByKeyPath:(NSString *)key;

- (NSArray *)eps_sortedGroupsByKeyPath:(NSString *)key keySortDescriptors:(NSArray *)keySortDescriptors contentSortDescriptors:(NSArray *)contentSortDescriptors;

@end
