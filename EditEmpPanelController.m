//
//  EditEmpPanelController.m
//
//  Created by Michael Ramirez on 2/11/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "EditEmpPanelController.h"
#import "MainWindowController.h"
#import "ScheduleGUIAppDelegate.h"

@implementation EditEmpPanelController

-(void)showInWindow:(NSWindow *)window {
	if (!panel) {
		[NSBundle loadNibNamed:@"EditEmpPanel" owner:self];
	}
	
	[NSApp beginSheet: panel
	   modalForWindow:window
		modalDelegate: nil
	   didEndSelector: nil
		  contextInfo: nil];
	[self bindArrayController];
}

-(IBAction)closeWindow:(id)sender {
	[panel orderOut:nil];
	[NSApp endSheet:panel];
}

-(void)setParent:(id)sender {
	parentWindow = sender;
}

-(void)bindArrayController {
	[monIn bind:@"value" toObject:[parentWindow 
	arrayControllerEmployees]withKeyPath:@"selection.monIn" 
	options:nil];
	[monOut bind:@"value" toObject:[parentWindow 
	arrayControllerEmployees]withKeyPath:@"selection.monOut" 
	options:nil];
	[tueIn bind:@"value" toObject:[parentWindow 
	arrayControllerEmployees]withKeyPath:@"selection.tueIn" 
	options:nil];
	[tueOut bind:@"value" toObject:[parentWindow 
	arrayControllerEmployees]withKeyPath:@"selection.tueOut" 
	options:nil];
	[wedIn bind:@"value" toObject:[parentWindow 
	arrayControllerEmployees]withKeyPath:@"selection.wedIn" 
	options:nil];
	[wedOut bind:@"value" toObject:[parentWindow 
	arrayControllerEmployees]withKeyPath:@"selection.wedOut" 
	options:nil];
	[thuIn bind:@"value" toObject:[parentWindow 
	arrayControllerEmployees]withKeyPath:@"selection.thuIn" 
	options:nil];
	[thuOut bind:@"value" toObject:[parentWindow 
	arrayControllerEmployees]withKeyPath:@"selection.thuOut" 
	options:nil];
	[friIn bind:@"value" toObject:[parentWindow 
	arrayControllerEmployees]withKeyPath:@"selection.friIn" 
	options:nil];
	[friOut bind:@"value" toObject:[parentWindow 
	arrayControllerEmployees]withKeyPath:@"selection.friOut" 
	options:nil];
	[satIn bind:@"value" toObject:[parentWindow 
	arrayControllerEmployees]withKeyPath:@"selection.satIn" 
	options:nil];
	[satOut bind:@"value" toObject:[parentWindow 
	arrayControllerEmployees]withKeyPath:@"selection.satOut" 
	options:nil];
	[sunIn bind:@"value" toObject:[parentWindow 
	arrayControllerEmployees]withKeyPath:@"selection.sunIn" 
	options:nil];
	[sunOut bind:@"value" toObject:[parentWindow 
	arrayControllerEmployees]withKeyPath:@"selection.sunOut" 
	options:nil];
}

@end
