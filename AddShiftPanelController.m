//
//  AddShiftPanelController.m
//
//  Created by Michael Ramirez on 2/17/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "AddShiftPanelController.h"
#import "MainWindowController.h"
#import "ScheduleGUIAppDelegate.h"

@implementation AddShiftPanelController

-(void)showInWindow:(NSWindow *)window {
	if (!panel) {
		[NSBundle loadNibNamed:@"AddShiftPanel" owner:self];
	}
	
	[NSApp beginSheet:panel
	   modalForWindow:window
		modalDelegate: nil
	   didEndSelector: nil
		  contextInfo: nil];
}

-(IBAction)closeWindow:(id)sender {
	[panel orderOut:nil];
	[NSApp endSheet:panel];
}

-(void)setParent:(id)sender {
	parentWindow = sender;
}

-(IBAction)addShift:(id)sender {
}

@end
