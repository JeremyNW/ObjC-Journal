//
//  TableViewController.m
//  ObjCJournal
//
//  Created by Jeremy Warren on 9/29/21.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.manager = [[JWEntryManager alloc] init];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.manager.entries.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    JWEntry *entry = self.manager.entries[indexPath.row];
    cell.textLabel.text = entry.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@", entry.timestamp];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        JWEntry *entry = self.manager.entries[indexPath.row];
        [self.manager deleteEntry:entry];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    ViewController *destination = segue.destinationViewController;
    destination.manager = self.manager;
    
    if ([segue.identifier isEqualToString:@"updateEntry"]) {
        
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        
        JWEntry *entry = self.manager.entries[indexPath.row];
        
        destination.entry = entry;
        
        
    }
    
}
@end
