//
//  ScheduleGUIAppDelegate.h
//  ScheduleGUI
//
//  Created by Michael Ramirez on 2/8/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class MainWindowController,AddEmpPanelController,
EditEmpPanelController;
@interface ScheduleGUIAppDelegate : 
NSObject <NSApplicationDelegate> {

@private
	MainWindowController *mainWin;
	AddEmpPanelController *empAddWin;
	EditEmpPanelController *empEditWin;
	

}

-(IBAction)showMainWindow:(id)sender;
-(IBAction)showAddEmpWindow:(id)sender;
-(IBAction)showEditEmpWindow:(id)sender;
-(IBAction)saveCalltoEverything:(id)sender;

@end
