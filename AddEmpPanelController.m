//
//  AddEmpPanelController.m
//
//  Created by Michael Ramirez on 2/8/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "AddEmpPanelController.h"
#import "MainWindowController.h"
#import "ScheduleGUIAppDelegate.h"

@implementation AddEmpPanelController

-(void)showInWindow:(NSWindow *)window {
	if (!panel) {
		[NSBundle loadNibNamed:@"AddEmpPanel" owner:self];
	}
	
	[NSApp beginSheet: panel
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

- (IBAction)addEmployee:(id)sender {
	NSLog(@"%@",[monIn stringValue]);
	
	NSString* posValue = [NSString 
	stringWithFormat:@"%d",[posMtrx selectedRow]];
	NSString* ordrValue = [NSString
    stringWithFormat:@"%d",[ordrPop indexOfSelectedItem]]; 
	
	NSMutableDictionary *dict = [NSMutableDictionary 
		dictionaryWithObjectsAndKeys:
		[nameTxt stringValue],@"name",
		[minhTxt stringValue],@"minHrs",
		[maxhTxt stringValue],@"maxHrs",
		posValue,@"position",
		ordrValue,@"order",
		[NSString stringWithFormat:@"%d",[prepCheck state]],@"prep",
		nil];
	[dict addEntriesFromDictionary:[self addAvailability]];
	
	[[parentWindow arrayControllerEmployees]
	 addObject:dict];
	[self closeWindow:self];
}
	

-(void)controlTextDidChange:(NSNotification *)obj {
	maxhTxt.tag = 1;
	minhTxt.tag = 1;
	
	
	switch (((NSTextField *)[obj object]).tag) {
		case 1:
			[[obj object] setIntValue:[[obj object] intValue]];
			if ([[[obj object] stringValue] length] > 2) {
				[[obj object]setStringValue:[[[obj object] 
						stringValue] substringToIndex:2]];
				//keeps length of string to 2 characters
			}
			if ([[obj object]intValue] > 50) {
				[[obj object]setStringValue:[[[obj object] 
						stringValue] substringToIndex:1]];
				//keeps number value under 50
			}
			break;
		case 2:
			if ([[[obj object] stringValue] length] > 5) {
				[[obj object]setStringValue:[[[obj object] 
						stringValue] substringToIndex:5]];
			}
		
			text = [[obj object]stringValue];
			text = [text stringByReplacingOccurrencesOfString:@"." 
									withString:@""];
			double number = [text intValue] * 0.01;
			[[obj object]setStringValue: [NSString 
							stringWithFormat:@"%.2lf",number]];
			break;

		default:
			break;
	}
	
}
	

-(NSMutableDictionary *)addAvailability {
	
	availabilityTimes = [NSMutableDictionary 
						 dictionaryWithObjectsAndKeys:
	 [monIn stringValue],@"monIn",
	 [NSString stringWithFormat:@"%d",[monInPop 
		indexOfSelectedItem]],@"monInAMPM",	
	 [monOut stringValue],@"monOut",
	 [NSString stringWithFormat:@"%d",[monOutPop 
		indexOfSelectedItem]],@"monOutAMPM",	
	 [tueIn stringValue],@"tueIn",
	 [NSString stringWithFormat:@"%d",[tueInPop 
		indexOfSelectedItem]],@"tueInAMPM",	
	 [tueOut stringValue],@"tueOut",
	 [NSString stringWithFormat:@"%d",[tueOutPop 
		indexOfSelectedItem]],@"tueOutAMPM",	
	 [wedIn stringValue],@"wedIn",
	 [NSString stringWithFormat:@"%d",[wedInPop 
		indexOfSelectedItem]],@"wedInAMPM",	
	 [wedOut stringValue],@"wedOut",
	 [NSString stringWithFormat:@"%d",[wedOutPop 
		indexOfSelectedItem]],@"wedOutAMPM",	
	 [thuIn stringValue],@"thuIn",
	 [NSString stringWithFormat:@"%d",[thuInPop 
		indexOfSelectedItem]],@"thuInAMPM",	
	 [thuOut stringValue],@"thuOut",
	 [NSString stringWithFormat:@"%d",[thuOutPop 
		indexOfSelectedItem]],@"thuOutAMPM",	
	 [friIn stringValue],@"friIn",
	 [NSString stringWithFormat:@"%d",[friInPop 
		indexOfSelectedItem]],@"friInAMPM",	
	 [friOut stringValue],@"friOut",
	 [NSString stringWithFormat:@"%d",[friOutPop 
		indexOfSelectedItem]],@"friOutAMPM",	
	 [satIn stringValue],@"satIn",
	 [NSString stringWithFormat:@"%d",[satInPop 
		indexOfSelectedItem]],@"satInAMPM",	
	 [satOut stringValue],@"satOut",
	 [NSString stringWithFormat:@"%d",[satOutPop 
		indexOfSelectedItem]],@"satOutAMPM",	
	 [sunIn stringValue],@"sunIn",
	 [NSString stringWithFormat:@"%d",[sunInPop 
		indexOfSelectedItem]],@"sunInAMPM",	
	 [sunOut stringValue],@"sunOut",
	 [NSString stringWithFormat:@"%d",[sunOutPop 
		indexOfSelectedItem]],@"sunOutAMPM",	
	 nil];
	
	
	return availabilityTimes;
}


@end
