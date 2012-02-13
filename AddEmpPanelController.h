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
	
	IBOutlet NSButton* prepCheck;
		
	NSString *text;
	NSMutableDictionary* availabilityTimes;
	
	
}

-(void)showInWindow:(NSWindow *)window;
-(IBAction)closeWindow:(id)sender;
-(IBAction)addEmployee:(id)sender;
-(void)setParent:(id)sender;
-(NSMutableDictionary *)addAvailability;



@end
