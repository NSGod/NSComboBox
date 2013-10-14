//
//  MDAppDelegate.m
//  NSComboBox
//
//  Created by Mark Douma on 2/24/2012.
//  Copyright (c) 2012 Mark Douma LLC. All rights reserved.
//

#import "MDAppDelegate.h"

@implementation MDAppDelegate

@synthesize window;

- (id)init {
	if ((self = [super init])) {
		comboBoxItems = [[NSMutableArray alloc]
						 initWithArray:[@"Cocoa Programming setting the delegate"
										componentsSeparatedByString:@" "]];
	}
	return self;
}

- (void)dealloc {
	[comboBoxItems release];
    [super dealloc];
}

- (NSInteger)numberOfItemsInComboBox:(NSComboBox *)aComboBox {
	return [comboBoxItems count];
}

- (id)comboBox:(NSComboBox *)aComboBox objectValueForItemAtIndex:(NSInteger)index {
	if (aComboBox == comboBox) {
		return [comboBoxItems objectAtIndex:index];
	}
	return nil;
}

- (void)comboBoxSelectionDidChange:(NSNotification *)notification {
	NSLog(@"[%@ %@] value == %@", NSStringFromClass([self class]),
      NSStringFromSelector(_cmd), [comboBoxItems objectAtIndex:
		[(NSComboBox *)[notification object] indexOfSelectedItem]]);
	
}
@end
