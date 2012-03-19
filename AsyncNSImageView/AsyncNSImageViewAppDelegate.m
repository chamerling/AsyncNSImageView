//
//  AsyncNSImageViewAppDelegate.m
//  AsyncNSImageView
//
//  Created by Christophe Hamerling on 19/03/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "AsyncNSImageViewAppDelegate.h"
#import "AsyncViewCell.h"
#import "EGOCache.h"

@implementation AsyncNSImageViewAppDelegate

@synthesize tableView;
@synthesize window;
- (void)awakeFromNib {
	[super awakeFromNib];
	photos = [[NSArray alloc] initWithObjects:
              @"http://chamerling.github.com/AsyncNSImageView/test/0.jpg",
              @"http://chamerling.github.com/AsyncNSImageView/test/1.jpg",
              @"http://chamerling.github.com/AsyncNSImageView/test/2.jpg",
              @"http://chamerling.github.com/AsyncNSImageView/test/3.jpg",
              @"http://chamerling.github.com/AsyncNSImageView/test/4.jpg",
              @"http://chamerling.github.com/AsyncNSImageView/test/5.jpg",
              @"http://chamerling.github.com/AsyncNSImageView/test/6.jpg",
              @"http://chamerling.github.com/AsyncNSImageView/test/7.jpg",
              @"http://chamerling.github.com/AsyncNSImageView/test/8.jpg",
              @"http://chamerling.github.com/AsyncNSImageView/test/9.jpg",
              nil];
}


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
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
    [[self tableView] reloadData];
}


@end
