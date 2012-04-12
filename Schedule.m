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
							 toController:(NSArrayController *)controller
{
	int employeeCount = 1;
	int shiftCount = 1;
	
	for (NSMutableArray* array in shifts) 
	{
		for (NSDictionary* shift in array) 
		{
			for (NSDictionary* emp in employees) 
			{
				if ([self isEmployee:emp inArray:controller]) {
					NSLog(@"%@ is in the array\n", [emp objectForKey:@"name"]);
					break;
				}
					NSMutableDictionary *tempDictionary = [NSMutableDictionary
							dictionaryWithObjectsAndKeys:
							[emp objectForKey:@"name"],@"name",
							[shift objectForKey:@"timeIn"],@"monday",
										  nil];
					[controller addObject:tempDictionary];
					NSLog(@"Employee %i Name: %@",employeeCount,[emp objectForKey:@"name"]);
					NSLog(@"Shift %i Time In: %@",shiftCount,[shift objectForKey:@"timeIn"]);
					shiftCount++;
					employeeCount++;
			}
		}
	}
	return employees;
	
}

-(BOOL)isEmployee:(NSDictionary *) employee inArray:(NSArrayController *) controller
{
	for (NSMutableDictionary* addedEmployee in [controller content])
	{
		if ([addedEmployee objectForKey:@"name"] == [employee objectForKey:@"name"]) 
		{
			return TRUE;
		}
	}
	
	return FALSE;
}

@end
