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
								andShifts:(NSMutableArray *)shifts
							 toController:(NSArrayController *)controller{
	int employeeCount = 1;
	int shiftCount = 1;

	
	for (NSDictionary* emp in employees) {
		NSMutableDictionary *tempDictionary = [NSMutableDictionary
							dictionaryWithObjectsAndKeys:
							[emp objectForKey:@"name"],@"name",
										  nil];
		[controller addObject:tempDictionary];
		NSLog(@"Employee %i Name: %@",employeeCount,[emp objectForKey:@"name"]);
		employeeCount++;
	}
	for (NSMutableArray* array in shifts) {
		for (NSDictionary* shift in array) {
			NSLog(@"Shift %i Time In: %@",shiftCount,[shift objectForKey:@"timeIn"]);
			shiftCount++;
		}
	}
	
	
	
	/*
	 NSMutableDictionary *dict = [NSMutableDictionary 
								 dictionaryWithObjectsAndKeys:
								 [nameTxt stringValue],@"name",
								 [minhTxt stringValue],@"minHrs",
								 [maxhTxt stringValue],@"maxHrs",
								 posValue,@"position",
								 ordrValue,@"order",
								 [NSString stringWithFormat:@"%d",[prepCheck state]],@"prep",
								 nil];
	[dict addEntriesFromDictionary:[self addAvailability]];
	
	[[parentWindow arrayControllerEmployees]
	 addObject:dict];
	*/
	return employees;
	
}

@end
