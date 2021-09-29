//
//  JWEntryManager.h
//  ObjCJournal
//
//  Created by Jeremy Warren on 9/29/21.
//

#import <Foundation/Foundation.h>
#import "JWEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface JWEntryManager : NSObject

@property NSMutableArray<JWEntry *> *entries;

- (void)createEntryWithTitle:(NSString *)title
                    contents:(NSString *)contents;

- (void) updateEntry:(JWEntry *)entry
               title:(NSString *)title
               contents:(NSString *)contents;

- (void) deleteEntry:(JWEntry *)entry;

@end

NS_ASSUME_NONNULL_END
