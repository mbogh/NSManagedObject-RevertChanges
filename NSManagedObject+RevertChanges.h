//
//  NSManagedObject+RevertChanges.h
//
//  Created by Morten Bøgh on 6/3/12.
//  Copyright (c) 2012 Just A Beech. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface NSManagedObject (RevertChanges)
- (void)revertChanges;
@end
