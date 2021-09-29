//
//  JWAddEntry.m
//  ObjCJournal
//
//  Created by Jeremy Warren on 9/29/21.
//

#import "JWEntry.h"

@implementation JWEntry

- (instancetype)initWithTitle:(NSString *)title contents:(NSString *)contents timestamp:(NSDate *)timestamp {
    self = [super init];
    
    if (self) {
        _title = title;
        _contents = contents;
        _timestamp = timestamp;
    }
    
    return self;
}

@end  
