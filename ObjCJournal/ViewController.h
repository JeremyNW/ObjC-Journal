//
//  ViewController.h
//  ObjCJournal
//
//  Created by Jeremy Warren on 9/29/21.
//

#import <UIKit/UIKit.h>
#import "JWEntry.h"
#import "JWEntryManager.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextField *contentsTextField;


@property JWEntry *entry;
@property JWEntryManager *manager;

- (IBAction)saveButtonTapped:(id)sender;

@end

