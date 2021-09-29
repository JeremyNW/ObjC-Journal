//
//  TableViewController.h
//  ObjCJournal
//
//  Created by Jeremy Warren on 9/29/21.
//

#import <UIKit/UIKit.h>
#import "JWEntryManager.h"
#import "ViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface TableViewController : UITableViewController

@property JWEntryManager *manager;

@end

NS_ASSUME_NONNULL_END
