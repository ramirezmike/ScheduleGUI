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
	IBOutlet NSTextField *monOut;
	IBOutlet NSTextField *tueIn;
	IBOutlet NSTextField *tueOut;
	IBOutlet NSTextField *wedIn;
	IBOutlet NSTextField *wedOut;
	IBOutlet NSTextField *thuIn;
	IBOutlet NSTextField *thuOut;
	IBOutlet NSTextField *friIn;
	IBOutlet NSTextField *friOut;
	IBOutlet NSTextField *satIn;
	IBOutlet NSTextField *satOut;
	IBOutlet NSTextField *sunIn;
	IBOutlet NSTextField *sunOut;

	IBOutlet id panel;
	
}

-(void)showInWindow:(NSWindow *)window;
-(IBAction)closeWindow:(id)sender;
-(void)setParent:(id)sender;
-(void)bindArrayController;

@end
