//
//  AsyncNSImageViewAppDelegate.h
//  AsyncNSImageView
//
//  Created by Christophe Hamerling on 19/03/12.
//  Copyright 2012 christophehamerling.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AsyncNSImageViewAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
    NSMutableArray* photos;
    int counter;
}

@property (assign) IBOutlet NSTableView *tableView;
@property (assign) IBOutlet NSWindow *window;

- (IBAction)clearCache:(id)sender;

- (IBAction)addImage:(id)sender;

@end
