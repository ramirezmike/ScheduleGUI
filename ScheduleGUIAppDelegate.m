//
//  ScheduleGUIAppDelegate.m
//  ScheduleGUI
//
//  Created by Michael Ramirez on 2/8/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "ScheduleGUIAppDelegate.h"
#import "MainWindowController.h"
#import "AddEmpPanelController.h"

@class MainWindowController,AddEmpPanelController;
@implementation ScheduleGUIAppDelegate

-(void) awakeFromNib {
	[self showMainWindow:nil];
}

-(IBAction) showMainWindow:(id)sender {
	if (!mainWin) {
		mainWin = [[MainWindowController alloc]init];
	}

	[mainWin setParent:self];
	[mainWin showWindow:nil];
}

-(IBAction) showAddEmpWindow:(id)sender {
	if (!empAddWin) {
		empAddWin = [[AddEmpPanelController alloc]init];
	}
	
	[empAddWin setParent:sender];
	[empAddWin showInWindow:[NSApp mainWindow]];
}


-(IBAction)saveCalltoEverything:(id)sender {
	[mainWin save];
}


-(void) dealloc {
	[mainWin release];
	[empAddWin release];
	[super dealloc];
}

@end
