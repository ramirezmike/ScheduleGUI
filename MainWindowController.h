//
//  MainWindowController.h
//
//  Created by Michael Ramirez on 2/8/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MainWindowController : NSWindowController {

	id parent;
	
	IBOutlet NSArrayController *arrayControllerEmployees;
	IBOutlet NSArrayController *arrayControllerShifts;

	
	IBOutlet NSTableView *tblEmployees;
	IBOutlet NSMatrix *daySelection;
	IBOutlet NSMatrix *houseSelection;
 
	NSMutableArray* employeeData;
	NSMutableArray* monFShiftData;
	NSMutableArray* monBShiftData;
	NSMutableArray* tueFShiftData;
	NSMutableArray* tueBShiftData;
	NSMutableArray* wedFShiftData;
	NSMutableArray* wedBShiftData;
	NSMutableArray* thuFShiftData;
	NSMutableArray* thuBShiftData;
	NSMutableArray* friFShiftData;
	NSMutableArray* friBShiftData;
	NSMutableArray* satFShiftData;
	NSMutableArray* satBShiftData;
	NSMutableArray* sunFShiftData;
	NSMutableArray* sunBShiftData;
		
}

-(NSArrayController *) arrayControllerEmployees;
-(NSArrayController *) arrayControllerShifts;


-(void)setParent:(id)sender;
-(void)save;

-(IBAction)sendCalltoShowAddEmpWindow:(id)sender;
-(IBAction)sendCalltoShowEditEmpWindow:(id)sender;
-(IBAction)sendCalltoShowAddShiftWindow:(id)sender;
-(IBAction)removeSelected:(id)sender;
-(IBAction) removeShift:(id)sender; 
-(IBAction)selectDayForShiftTable:(id)sender;

@property (copy) NSArray* employeeData;
@property (copy) NSArray* monFShiftData;
@property (copy) NSArray* monBShiftData;
@property (copy) NSArray* tueFShiftData;
@property (copy) NSArray* tueBShiftData;
@property (copy) NSArray* wedFShiftData;
@property (copy) NSArray* wedBShiftData;
@property (copy) NSArray* thuFShiftData;
@property (copy) NSArray* thuBShiftData;
@property (copy) NSArray* friFShiftData;
@property (copy) NSArray* friBShiftData;
@property (copy) NSArray* satFShiftData;
@property (copy) NSArray* satBShiftData;
@property (copy) NSArray* sunFShiftData;
@property (copy) NSArray* sunBShiftData;

@end
