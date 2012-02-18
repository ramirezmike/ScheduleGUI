//
//  AddShiftPanelController.h
//
//  Created by Michael Ramirez on 2/17/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AddShiftPanelController : NSWindowController {
	id parentWindow;
	
	IBOutlet id panel;
	
	IBOutlet NSTextField *timeIn;
	IBOutlet NSTextField *timeOut;
	IBOutlet NSPopUpButton *positionPop;
}

-(void)showInWindow:(NSWindow *)window;
-(IBAction)closeWindow:(id)sender;
-(IBAction)addShift:(id)sender;
-(void)setParent:(id)sender;


@end
