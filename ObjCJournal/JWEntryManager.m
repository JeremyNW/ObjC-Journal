//
//  JWEntryManager.m
//  ObjCJournal
//
//  Created by Jeremy Warren on 9/29/21.
//

#import "JWEntryManager.h"

@implementation JWEntryManager

- (instancetype)init {
    self = [super init];
    
    if (self) {
        _entries = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createEntryWithTitle:(NSString *)title contents:(NSString *)contents {
    JWEntry *entry = [[JWEntry alloc] initWithTitle:title contents:contents timestamp: [NSDate new]];
    
    [self.entries addObject:entry];
    
    
}

- (void)updateEntry:(JWEntry *)entry title:(NSString *)title contents:(NSString *)contents{
    entry.title = title;
    entry.contents = contents;
}

- (void)deleteEntry:(JWEntry *)entry{
    [self.entries removeObject:entry];
}

@end
