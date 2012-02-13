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
	[monInPop bind:@"selectedTag" toObject:[parentWindow arrayControllerEmployees]withKeyPath:@"selection.monInAMPM" options:nil];
	[monOut bind:@"value" toObject:[parentWindow 
	arrayControllerEmployees]withKeyPath:@"selection.monOut" 
	options:nil];
	[monOutPop bind:@"selectedTag" toObject:[parentWindow arrayControllerEmployees]withKeyPath:@"selection.monOutAMPM" options:nil];
	[tueIn bind:@"value" toObject:[parentWindow 
	arrayControllerEmployees]withKeyPath:@"selection.tueIn" 
	options:nil];
	[tueInPop bind:@"selectedTag" toObject:[parentWindow arrayControllerEmployees]withKeyPath:@"selection.tueInAMPM" options:nil];
	[tueOut bind:@"value" toObject:[parentWindow 
	arrayControllerEmployees]withKeyPath:@"selection.tueOut" 
	options:nil];
	[tueOutPop bind:@"selectedTag" toObject:[parentWindow arrayControllerEmployees]withKeyPath:@"selection.tueOutAMPM" options:nil];
	[wedIn bind:@"value" toObject:[parentWindow 
	arrayControllerEmployees]withKeyPath:@"selection.wedIn" 
	options:nil];
	[wedInPop bind:@"selectedTag" toObject:[parentWindow arrayControllerEmployees]withKeyPath:@"selection.wedInAMPM" options:nil];
	[wedOut bind:@"value" toObject:[parentWindow 
	arrayControllerEmployees]withKeyPath:@"selection.wedOut" 
	options:nil];
	[wedOutPop bind:@"selectedTag" toObject:[parentWindow arrayControllerEmployees]withKeyPath:@"selection.wedOutAMPM" options:nil];
	[thuIn bind:@"value" toObject:[parentWindow 
	arrayControllerEmployees]withKeyPath:@"selection.thuIn" 
	options:nil];
	[thuInPop bind:@"selectedTag" toObject:[parentWindow arrayControllerEmployees]withKeyPath:@"selection.thuInAMPM" options:nil];
	[thuOut bind:@"value" toObject:[parentWindow 
	arrayControllerEmployees]withKeyPath:@"selection.thuOut" 
	options:nil];
	[thuOutPop bind:@"selectedTag" toObject:[parentWindow arrayControllerEmployees]withKeyPath:@"selection.thuOutAMPM" options:nil];
	[friIn bind:@"value" toObject:[parentWindow 
	arrayControllerEmployees]withKeyPath:@"selection.friIn" 
	options:nil];
	[friInPop bind:@"selectedTag" toObject:[parentWindow arrayControllerEmployees]withKeyPath:@"selection.friInAMPM" options:nil];
	[friOut bind:@"value" toObject:[parentWindow 
	arrayControllerEmployees]withKeyPath:@"selection.friOut" 
	options:nil];
	[friOutPop bind:@"selectedTag" toObject:[parentWindow arrayControllerEmployees]withKeyPath:@"selection.friOutAMPM" options:nil];
	[satIn bind:@"value" toObject:[parentWindow 
	arrayControllerEmployees]withKeyPath:@"selection.satIn" 
	options:nil];
	[satInPop bind:@"selectedTag" toObject:[parentWindow arrayControllerEmployees]withKeyPath:@"selection.satInAMPM" options:nil];
	[satOut bind:@"value" toObject:[parentWindow 
	arrayControllerEmployees]withKeyPath:@"selection.satOut" 
	options:nil];
	[satOutPop bind:@"selectedTag" toObject:[parentWindow arrayControllerEmployees]withKeyPath:@"selection.satOutAMPM" options:nil];
	[sunIn bind:@"value" toObject:[parentWindow 
	arrayControllerEmployees]withKeyPath:@"selection.sunIn" 
	options:nil];
	[sunInPop bind:@"selectedTag" toObject:[parentWindow arrayControllerEmployees]withKeyPath:@"selection.sunInAMPM" options:nil];
	[sunOut bind:@"value" toObject:[parentWindow 
	arrayControllerEmployees]withKeyPath:@"selection.sunOut" 
	options:nil];
	[sunOutPop bind:@"selectedTag" toObject:[parentWindow arrayControllerEmployees]withKeyPath:@"selection.sunOutAMPM" options:nil];
}

@end
