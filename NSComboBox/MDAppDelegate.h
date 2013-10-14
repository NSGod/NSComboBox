//
//  MDAppDelegate.h
//  NSComboBox
//
//  Created by Mark Douma on 2/24/2012.
//  Copyright (c) 2012 Mark Douma LLC. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MDAppDelegate : NSObject <NSApplicationDelegate,
                  NSComboBoxDelegate, NSComboBoxDataSource> {
	IBOutlet NSWindow			*window;
	IBOutlet NSComboBox			*comboBox;
	NSMutableArray				*comboBoxItems;
}

@property (assign) IBOutlet NSWindow *window;

@end
