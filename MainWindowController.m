//
//  MainWindowController.m
//
//  Created by Michael Ramirez on 2/8/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "MainWindowController.h"
#import "ScheduleGUIAppDelegate.h"
#import "AddEmpPanelController.h"

@implementation MainWindowController
@synthesize employeeData;
NSString *filePath;


-(NSArrayController *) arrayControllerEmployees {
	return arrayControllerEmployees;
}


-(void)setParent:(id)sender {
	parent = sender;
}



-(IBAction)sendCalltoShowAddEmpWindow:(id)sender {
	[parent	showAddEmpWindow:self];
}

-(IBAction)sendCalltoShowEditEmpWindow:(id)sender {
	[parent showEditEmpWindow:self];
}

-(IBAction) removeSelected:(id)sender {
	[arrayControllerEmployees remove:self];
}


-(void)save {
	if (![[NSFileManager defaultManager] 
		  fileExistsAtPath:filePath] 
		|| [[NSFileManager defaultManager]
			isWritableFileAtPath:filePath]) {
			
			[[arrayControllerEmployees arrangedObjects] 
			 writeToFile:filePath atomically:YES];
		}
}


-(void)controlTextDidChange:(NSNotification *)obj {
	
	[[obj object] setIntValue:[[obj object] intValue]];
	//only allows numbers in field
	
	switch (((NSTextField *)[obj object]).tag) {
		case 0:
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
		default:
			break;
	}
	
}



-(id)init {
	self = [super initWithWindowNibName:@"MainWindow"];
	return self;
}

-(void)awakeFromNib {
	filePath = [[[NSBundle mainBundle] 
				 pathForResource:@"Employees" 
				 ofType:@"plist"]retain];
	employeeData = [[NSMutableArray alloc]init];
	
	if ([[NSFileManager defaultManager]
		 fileExistsAtPath:filePath]) {
		NSMutableArray *empFile = [[NSMutableArray alloc]
					initWithContentsOfFile:filePath];
		for (id employee in empFile) {
			[arrayControllerEmployees addObject:employee];
		}
		[empFile release];
	}
}

@end
