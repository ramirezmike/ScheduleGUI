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
	IBOutlet NSTableView *tblMonFOH;
	
	NSMutableArray* employeeData;
	NSMutableArray* monFShiftData;
	NSMutableArray* monBShiftData;

}

-(NSArrayController *) arrayControllerEmployees;
-(NSArrayController *) arrayControllerShifts;


-(void)setParent:(id)sender;
-(void)save;

-(IBAction)sendCalltoShowAddEmpWindow:(id)sender;
-(IBAction)sendCalltoShowEditEmpWindow:(id)sender;
-(IBAction)sendCalltoShowAddShiftWindow:(id)sender;
-(IBAction)removeSelected:(id)sender;


@property (copy) NSArray* employeeData;
@property (copy) NSArray* monFShiftData;
@property (copy) NSArray* monBShiftData;

@end
