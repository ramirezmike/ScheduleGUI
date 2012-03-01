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
@synthesize employeeData,monFShiftData,monBShiftData,tueFShiftData,tueBShiftData,
wedFShiftData,wedBShiftData,thuFShiftData,thuBShiftData,friFShiftData,
friBShiftData,satFShiftData,satBShiftData,sunFShiftData,sunBShiftData;


NSString *filePath;
NSString *filePathShift;


-(NSArrayController *) arrayControllerEmployees {
	return arrayControllerEmployees;
}

-(NSArrayController *) arrayControllerShifts {
	return arrayControllerShifts;
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

-(IBAction)sendCalltoShowAddShiftWindow:(id)sender {
	[parent showAddShiftWindow:self withController:arrayControllerShifts];	
}

-(IBAction) removeSelected:(id)sender {
	[arrayControllerEmployees remove:self];
}

-(IBAction) removeShift:(id)sender {
	[arrayControllerShifts remove:self];
}

-(IBAction)selectDayForShiftTable:(id)sender {
	switch ([daySelection selectedRow]) {
		case 0:
			switch ([houseSelection selectedRow]) {
				case 0:
				[arrayControllerShifts setContent:monFShiftData];
					break;
				case 1:
				[arrayControllerShifts setContent:monBShiftData];
					break;
				default:
					break;
			}

			break;
		case 1:
			switch ([houseSelection selectedRow]) {
				case 0:
				[arrayControllerShifts setContent:tueFShiftData];
					break;
				case 1:
				[arrayControllerShifts setContent:tueBShiftData];
					break;
				default:
					break;
			}
			break;
		case 2:
			switch ([houseSelection selectedRow]) {
				case 0:
				[arrayControllerShifts setContent:wedFShiftData];
					break;
				case 1:
				[arrayControllerShifts setContent:wedBShiftData];
					break;
				default:
					break;
			}
			break;
		case 3:
			switch ([houseSelection selectedRow]) {
				case 0:
				[arrayControllerShifts setContent:thuFShiftData];
					break;
				case 1:
				[arrayControllerShifts setContent:thuBShiftData];
					break;
				default:
					break;
			}
			break;
		case 4:
			switch ([houseSelection selectedRow]) {
				case 0:
				[arrayControllerShifts setContent:friFShiftData];
					break;
				case 1:
				[arrayControllerShifts setContent:friBShiftData];
					break;
				default:
					break;
			}
			break;
		case 5:
			switch ([houseSelection selectedRow]) {
				case 0:
				[arrayControllerShifts setContent:satFShiftData];
					break;
				case 1:
				[arrayControllerShifts setContent:satBShiftData];
					break;
				default:
					break;
			}
			break;
		case 6:
			switch ([houseSelection selectedRow]) {
				case 0:
				[arrayControllerShifts setContent:sunFShiftData];
					break;
				case 1:
				[arrayControllerShifts setContent:sunBShiftData];
					break;
				default:
					break;
			}
			break;
		default:
			break;
	}
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
	filePathShift = [[[NSBundle mainBundle]
					  pathForResource:@"Shifts"
					  ofType:@"plist"]retain];

	employeeData = [[NSMutableArray alloc]init];
	monFShiftData = [[NSMutableArray alloc]init];
	monBShiftData = [[NSMutableArray alloc]init];
	tueFShiftData = [[NSMutableArray alloc]init];
	tueBShiftData = [[NSMutableArray alloc]init];
	wedFShiftData = [[NSMutableArray alloc]init];
	wedBShiftData = [[NSMutableArray alloc]init];
	thuFShiftData = [[NSMutableArray alloc]init];
	thuBShiftData = [[NSMutableArray alloc]init];
	friFShiftData = [[NSMutableArray alloc]init];
	friBShiftData = [[NSMutableArray alloc]init];
	satFShiftData = [[NSMutableArray alloc]init];
	satBShiftData = [[NSMutableArray alloc]init];
	sunFShiftData = [[NSMutableArray alloc]init];
	sunBShiftData = [[NSMutableArray alloc]init];
	
	if ([[NSFileManager defaultManager]
		 fileExistsAtPath:filePath]) {
		NSMutableArray *empFile = [[NSMutableArray alloc]
					initWithContentsOfFile:filePath];
		for (id employee in empFile) {
			[arrayControllerEmployees addObject:employee];
		}
		[empFile release];
	}
	if (![[NSFileManager defaultManager]
		 fileExistsAtPath:filePathShift]) {
		[[NSFileManager defaultManager]
		 createFileAtPath:filePathShift 
		 contents:nil attributes:nil];
	}
		NSMutableArray *shiftFile = [[NSMutableArray alloc]
					initWithContentsOfFile:filePathShift];
	for (id shift in shiftFile) {
		[arrayControllerShifts addObject:shift];
	}
	[shiftFile release];
	
	[arrayControllerShifts setContent:monFShiftData];

}

@end
