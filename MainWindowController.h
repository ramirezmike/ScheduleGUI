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
	
	NSMutableArray* employeeData;

}

-(NSArrayController *) arrayControllerEmployees;

-(void)setParent:(id)sender;
-(void)save;

-(IBAction)sendCalltoShowAddEmpWindow:(id)sender;
-(IBAction)removeSelected:(id)sender;

@property (copy) NSArray* employeeData;

@end
