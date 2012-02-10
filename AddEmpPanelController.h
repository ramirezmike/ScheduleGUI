//
//  AddEmpPanelController.h
//
//  Created by Michael Ramirez on 2/8/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AddEmpPanelController : NSWindowController {
	id parentWindow;
	
	IBOutlet id panel;
	
	IBOutlet NSTextField *maxhTxt;
    IBOutlet NSTextField *minhTxt;
    IBOutlet NSTextField *nameTxt;
	IBOutlet NSPopUpButton *ordrPop;
	IBOutlet NSMatrix *posMtrx;
	
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
	
	NSString *text;
	
}

-(void)showInWindow:(NSWindow *)window;
-(IBAction)closeWindow:(id)sender;
-(IBAction)addEmployee:(id)sender;
-(void)setParent:(id)sender;


@end
