//
//  ScheduleGUIAppDelegate.h
//  ScheduleGUI
//
//  Created by Michael Ramirez on 2/8/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class MainWindowController,AddEmpPanelController,
EditEmpPanelController,AddShiftPanelController;
@interface ScheduleGUIAppDelegate : 
NSObject <NSApplicationDelegate> {

@private
	MainWindowController *mainWin;
	AddEmpPanelController *empAddWin;
	AddShiftPanelController *shiftAddWin;
	EditEmpPanelController *empEditWin;
	
	

}


//these should all be "void"
-(IBAction)showMainWindow:(id)sender;
-(IBAction)showAddEmpWindow:(id)sender;
-(IBAction)showEditEmpWindow:(id)sender;
-(void)showAddShiftWindow:(id)sender 
withController:(NSArrayController *) controller;
-(IBAction)saveCalltoEverything:(id)sender;

@end
