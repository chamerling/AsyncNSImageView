//
//  AsyncViewCell.m
//  AsyncNSImageView
//
//  Created by Christophe Hamerling on 18/03/12.
//  Copyright (c) 2012 christophehamerling.com. All rights reserved.
//

#import "AsyncViewCell.h"
#import "EGOImageView.h"

@implementation AsyncViewCell

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        egoImageView = [[EGOImageView alloc] initWithPlaceholderImage:[NSImage imageNamed:@"loading.gif"] delegate:self];
		egoImageView.frame = CGRectMake(4.0f, 4.0f, 296.0f, 296.0f);
        [self addSubview:egoImageView];
    }
    
    return self;
}

- (void)setPhoto:(NSString*)photo {
	egoImageView.imageURL = [NSURL URLWithString:photo];
}


- (void)imageViewLoadedImage:(EGOImageView*)imageView {
    NSLog(@"Image has been loaded : %@", imageView.imageURL);
}

- (void)drawRect:(NSRect)dirtyRect
{
    // Drawing code here.
}

@end
