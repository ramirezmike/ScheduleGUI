//
//  MainWindowController.m
//
//  Created by Michael Ramirez on 2/8/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "MainWindowController.h"
#import "ScheduleGUIAppDelegate.h"
#import "AddEmpPanelController.h"
#import "Schedule.h"


@implementation MainWindowController
@synthesize employeeData,monFShiftData,monBShiftData,tueFShiftData,tueBShiftData,
wedFShiftData,wedBShiftData,thuFShiftData,thuBShiftData,friFShiftData,
friBShiftData,satFShiftData,satBShiftData,sunFShiftData,sunBShiftData,shiftDataSave;


NSString *filePath;
NSString *filePathShift;



-(IBAction)scheduleClassTest:(id)sender {
	Schedule* new = [[Schedule alloc]init];
	[new scheduleWithEmployees:employeeData andShifts:shiftDataSave];
	[new release];
}
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
	//[shiftDataSave addObject:monFShiftData];
	if (![[NSFileManager defaultManager] 
		  fileExistsAtPath:filePath] 
		|| [[NSFileManager defaultManager]
			isWritableFileAtPath:filePath]) {
			
			[[arrayControllerEmployees arrangedObjects] 
			 writeToFile:filePath atomically:YES];
		}
	
		[shiftDataSave replaceObjectAtIndex:0 withObject:monFShiftData];
        [shiftDataSave replaceObjectAtIndex:1 withObject:monBShiftData];
        [shiftDataSave replaceObjectAtIndex:2 withObject:tueFShiftData];
        [shiftDataSave replaceObjectAtIndex:3 withObject:tueBShiftData];
        [shiftDataSave replaceObjectAtIndex:4 withObject:wedFShiftData];
        [shiftDataSave replaceObjectAtIndex:5 withObject:wedBShiftData];
        [shiftDataSave replaceObjectAtIndex:6 withObject:thuFShiftData];
        [shiftDataSave replaceObjectAtIndex:7 withObject:thuBShiftData];
        [shiftDataSave replaceObjectAtIndex:8 withObject:friFShiftData];
        [shiftDataSave replaceObjectAtIndex:9 withObject:friBShiftData];
        [shiftDataSave replaceObjectAtIndex:10 withObject:satFShiftData];
        [shiftDataSave replaceObjectAtIndex:11 withObject:satBShiftData];
        [shiftDataSave replaceObjectAtIndex:12 withObject:sunFShiftData];
        [shiftDataSave replaceObjectAtIndex:13 withObject:sunBShiftData];

	if (![[NSFileManager defaultManager] 
		  fileExistsAtPath:filePathShift] 
		|| [[NSFileManager defaultManager]
			isWritableFileAtPath:filePathShift]) {
			
			[shiftDataSave
			 writeToFile:filePathShift atomically:YES];
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
	shiftDataSave = [[NSMutableArray alloc]init];
	
	if ([[NSFileManager defaultManager]
		 fileExistsAtPath:filePath]) {
		NSMutableArray *empFile = [[NSMutableArray alloc]
					initWithContentsOfFile:filePath];
		for (id employee in empFile) {
			[arrayControllerEmployees addObject:employee];
		}
		[empFile release];
	}

	if ([[NSFileManager defaultManager]
		 fileExistsAtPath:filePathShift]) {
		shiftDataSave = [[NSMutableArray alloc]
					initWithContentsOfFile:filePathShift];

		//NSMutableArray *shifts = [[NSMutableArray alloc]init];
		//[shifts addObject:[shiftFile objectAtIndex:0]];
		
		monFShiftData = [shiftDataSave objectAtIndex:0];
		monBShiftData = [shiftDataSave objectAtIndex:1];
		tueFShiftData = [shiftDataSave objectAtIndex:2];
		tueBShiftData = [shiftDataSave objectAtIndex:3];
		wedFShiftData = [shiftDataSave objectAtIndex:4];
		wedBShiftData = [shiftDataSave objectAtIndex:5];
		thuFShiftData = [shiftDataSave objectAtIndex:6];
		thuBShiftData = [shiftDataSave objectAtIndex:7];
		friFShiftData = [shiftDataSave objectAtIndex:8];
		friBShiftData = [shiftDataSave objectAtIndex:9];
		satFShiftData = [shiftDataSave objectAtIndex:10];
		satBShiftData = [shiftDataSave objectAtIndex:11];
		sunFShiftData = [shiftDataSave objectAtIndex:12];
		sunBShiftData = [shiftDataSave objectAtIndex:13];
	
		//[shifts release];
		[arrayControllerShifts setContent:monFShiftData];


	}
}

@end
