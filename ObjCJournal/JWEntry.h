//
//  JWAddEntry.h
//  ObjCJournal
//
//  Created by Jeremy Warren on 9/29/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JWEntry : NSObject

@property NSString *title;
@property NSString *contents;
@property NSDate *timestamp;

- (instancetype)initWithTitle:(NSString *)title
                     contents:(NSString *)contents
                     timestamp:(NSDate *)timestamp;

@end

NS_ASSUME_NONNULL_END
