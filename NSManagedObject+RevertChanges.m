//
//  NSManagedObject+RevertChanges.m
//
//  Created by Morten Bøgh on 6/3/12.
//  Copyright (c) 2012 Just A Beech. All rights reserved.
//

#import "NSManagedObject+RevertChanges.h"

@implementation NSManagedObject (RevertChanges)

- (void)revertChanges
{
    NSDictionary *changedValues = [self changedValues];
    NSDictionary *committedValues = [self committedValuesForKeys:[changedValues allKeys]];
    NSEnumerator *enumerator;
    id key;
    enumerator = [changedValues keyEnumerator];
    
    while ((key = [enumerator nextObject])) {
        id value = [committedValues objectForKey:key];
        value = value == [NSNull null] ? nil : value;
        [self setValue:value forKey:key];
    }
}
@end
