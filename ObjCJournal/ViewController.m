//
//  ViewController.m
//  ObjCJournal
//
//  Created by Jeremy Warren on 9/29/21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.titleTextField.text = self.entry.title;
    self.contentsTextField.text = self.entry.contents;
}


- (IBAction)saveButtonTapped:(id)sender {

    if (self.entry) {
        [self.manager updateEntry:self.entry title:self.titleTextField.text contents:self.contentsTextField.text];
    } else {
        [self.manager createEntryWithTitle:self.titleTextField.text contents:self.contentsTextField.text];
    }
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}
@end
