//
//  AsyncViewCell.h
//  AsyncNSImageView
//
//  Created by Christophe Hamerling on 18/03/12.
//  Copyright (c) 2012 christophehamerling.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "EGOImageView.h"

@interface AsyncViewCell : NSTableCellView<EGOImageViewDelegate> {
    EGOImageView* egoImageView;
    NSInteger number;
}

- (void)setPhoto:(NSString*)photo;

@end
