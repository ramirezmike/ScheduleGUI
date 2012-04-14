//
//  Schedule.h
//  ScheduleGUI
//
//  Created by Michael Ramirez on 3/3/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Schedule : NSObject {

}


-(NSMutableArray *) scheduleWithEmployees:(NSMutableArray *)employees 
								andShifts:(NSMutableArray *)shifts
								toController:(NSArrayController *)controller;
-(BOOL)isEmployee:(NSDictionary *) employee inArray:(NSArrayController *) controller;
-(BOOL)isShift:()shift availableInArray:(NSArrayController *) controller;

/*
 if employee is already in the list **DONE**
 if shift available
 if employee and available shift are same position
 if employee available shift's day
 if employee is currently working
 if employee has available hours left
 if shift fits in employee's available hours for that day
 if shift is less than an hour away from another shift (for doubles)
 */

@end
