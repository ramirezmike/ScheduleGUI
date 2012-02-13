//
//  EditEmpPanelController.h
//
//  Created by Michael Ramirez on 2/11/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface EditEmpPanelController : NSWindowController {

	id parentWindow;
	
	
	IBOutlet NSArrayController *arrayControllerEmployeesToEdit;

	IBOutlet NSTextField *monIn;
	IBOutlet NSPopUpButton *monInPop;
	IBOutlet NSTextField *monOut;
	IBOutlet NSPopUpButton *monOutPop;
	IBOutlet NSTextField *tueIn;
	IBOutlet NSPopUpButton *tueInPop;
	IBOutlet NSTextField *tueOut;
	IBOutlet NSPopUpButton *tueOutPop;
	IBOutlet NSTextField *wedIn;
	IBOutlet NSPopUpButton *wedInPop;
	IBOutlet NSTextField *wedOut;
	IBOutlet NSPopUpButton *wedOutPop;
	IBOutlet NSTextField *thuIn;
	IBOutlet NSPopUpButton *thuInPop;
	IBOutlet NSTextField *thuOut;
	IBOutlet NSPopUpButton *thuOutPop;
	IBOutlet NSTextField *friIn;
	IBOutlet NSPopUpButton *friInPop;
	IBOutlet NSTextField *friOut;
	IBOutlet NSPopUpButton *friOutPop;
	IBOutlet NSTextField *satIn;
	IBOutlet NSPopUpButton *satInPop;
	IBOutlet NSTextField *satOut;
	IBOutlet NSPopUpButton *satOutPop;
	IBOutlet NSTextField *sunIn;
	IBOutlet NSPopUpButton *sunInPop;
	IBOutlet NSTextField *sunOut;
	IBOutlet NSPopUpButton *sunOutPop;

	IBOutlet id panel;
	
}

-(void)showInWindow:(NSWindow *)window;
-(IBAction)closeWindow:(id)sender;
-(void)setParent:(id)sender;
-(void)bindArrayController;

@end
