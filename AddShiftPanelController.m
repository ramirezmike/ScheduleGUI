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

-(void)showInWindow:(NSWindow *)window 
	 withController: (NSArrayController *) controller 
	 andTitle:(NSString *) title
{
	if (!panel) {
		[NSBundle loadNibNamed:@"AddShiftPanel" owner:self];
	}
	
	controllerHolder = controller;
	currentTitle = title;
		
	[NSApp beginSheet:panel
	   modalForWindow:window
		modalDelegate: nil
	   didEndSelector: nil
		  contextInfo: nil];
}

-(IBAction)closeWindow:(id)sender 
{
	[panel orderOut:nil];
	[NSApp endSheet:panel];
}

-(void)setParent:(id)sender 
{
	parentWindow = sender;
}

-(IBAction)addShift:(id)sender 
{
	NSString* posPopValue = [NSString 
	stringWithFormat:@"%d",
	[positionPop indexOfSelectedItem]];
	
	NSString* timeInPopValue = [NSString 
		 stringWithFormat:@"%d",
		 [timeInPop indexOfSelectedItem]];

	NSString* timeOutPopValue = [NSString 
		 stringWithFormat:@"%d",
		 [timeOutPop indexOfSelectedItem]];

	NSMutableDictionary *dict = [NSMutableDictionary
		dictionaryWithObjectsAndKeys:
		[timeIn stringValue],@"timeIn",
		[timeOut stringValue],@"timeOut",
		posPopValue,@"position",
		timeInPopValue,@"timeInPop",
		timeOutPopValue,@"timeOutPop",
		currentTitle,@"title",
					 nil];
	[controllerHolder addObject:dict];
	[self closeWindow:nil];
}




@end
