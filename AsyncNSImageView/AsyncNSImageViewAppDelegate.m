//
//  AsyncNSImageViewAppDelegate.m
//  AsyncNSImageView
//
//  Created by Christophe Hamerling on 19/03/12.
//  Copyright 2012 christophehamerling.com. All rights reserved.
//

#import "AsyncNSImageViewAppDelegate.h"
#import "AsyncViewCell.h"
#import "EGOCache.h"

@implementation AsyncNSImageViewAppDelegate

@synthesize tableView;
@synthesize window;
- (void)awakeFromNib {
	[super awakeFromNib];
	photos = [[NSMutableArray alloc] initWithObjects:
              @"http://chamerling.github.com/AsyncNSImageView/test/0.jpg",
              nil];
}


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    counter = 1;
}

#pragma mark Table view methods

- (NSInteger)numberOfSectionsInTableView:(NSTableView *)tableView {
    return 1;
}

// Customize the number of rows in the table view.
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return photos.count;
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    // in a real world, cell is cached...
    
    AsyncViewCell *cell = [[AsyncViewCell alloc] init];
    [cell setPhoto:[photos objectAtIndex:row]];
    
    return cell;
}

- (IBAction)clearCache:(id)sender {
    [[EGOCache currentCache] clearCache];
    photos = [[NSMutableArray alloc] init];
    [[self tableView] reloadData];
}

- (IBAction)addImage:(id)sender {
    NSLog(@"Add object...");
    
    if (counter == 10) {
        counter = 0;
    }
    
    NSString *url = [NSString stringWithFormat:@"http://chamerling.github.com/AsyncNSImageView/test/%ld.jpg", counter++];
    NSLog(@"url : %@", url);
    
    [photos insertObject:url atIndex:0];
    [[self tableView] reloadData];
}

@end
