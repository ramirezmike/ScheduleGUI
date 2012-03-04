//
//  Schedule.m
//  ScheduleGUI
//
//  Created by Michael Ramirez on 3/3/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "Schedule.h"


@implementation Schedule


-(NSMutableArray *) scheduleWithEmployees:(NSMutableArray *)employees 
								andShifts:(NSMutableArray *)shifts {
	for (NSDictionary* emp in employees) {
		NSLog(@"%@",[emp objectForKey:@"name"]);
	}
	for (NSMutableArray* array in shifts) {
		for (NSDictionary* shift in array) {
			NSLog(@"%@",[shift objectForKey:@"timeIn"]);
		}
	}
	
	return employees;
	
}


@end
