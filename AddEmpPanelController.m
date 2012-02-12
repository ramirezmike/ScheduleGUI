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
		[self getPrepCheckValue],@"prep",
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
						 [monOut stringValue],@"monOut",
						 [tueIn stringValue],@"tueIn",
						 [tueOut stringValue],@"tueOut",
						 [wedIn stringValue],@"wedIn",
						 [wedOut stringValue],@"wedOut",
						 [thuIn stringValue],@"thuIn",
						 [thuOut stringValue],@"thuOut",
						 [friIn stringValue],@"friIn",
						 [friOut stringValue],@"friOut",
						 [satIn stringValue],@"satIn",
						 [satOut stringValue],@"satOut",
						 [sunIn stringValue],@"sunIn",
						 [sunOut stringValue],@"sunOut",
						 nil];
	
	
	return availabilityTimes;
}


- (NSString *)getPrepCheckValue {
	NSString *result;
	switch ([prepCheck state]) {
		case 1:
			result = @"TRUE";
			break;
		case 0:
			result = @"FALSE";
			break;

		default:
			break;
	}
	
	return result;
}


@end
