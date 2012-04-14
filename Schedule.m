//
//  Schedule.m
//  ScheduleGUI
//
//  Created by Michael Ramirez on 3/3/12.
//  Copyright 2012. All rights reserved.
//

#import "Schedule.h"


@implementation Schedule


-(NSMutableArray *) scheduleWithEmployees:(NSMutableArray *)employees 
								andShifts:(NSMutableArray *)shifts
							 toController:(NSArrayController *)controller
{
	//int shiftCount = 1;
	
	for (NSMutableArray* shiftsArray in shifts) 
	{
		for (NSDictionary* shift in shiftsArray) 
		{
			//int employeeCount = 1;
			for (NSDictionary* emp in employees) 
			{
				//employeeCount++;
				if ([self isEmployee:emp inArray:controller]) 
				{
					continue;
				}
				if (![self isShift:shift availableInArray:controller]) 
				{
					continue;
				}
					NSMutableDictionary *tempDictionary = [NSMutableDictionary
							dictionaryWithObjectsAndKeys:
							[shift objectForKey:@"title"],@"title",
							[emp objectForKey:@"name"],@"name",
							[shift objectForKey:@"timeIn"],@"monday",
										  nil];
					[controller addObject:tempDictionary];
			}			
			//shiftCount++;
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

-(BOOL)isShift:(NSDictionary *)shift availableInArray:(NSArrayController *) controller
{
	for (NSMutableDictionary* addedShift in [controller content])
	{
		if ([addedShift objectForKey:@"title"] != [shift objectForKey:@"title"]) {
			continue;
		}
		
		if ([addedShift objectForKey:@"monday"] == [shift objectForKey:@"timeIn"]) {
			return FALSE;
		}
	}
	return TRUE;
}

@end
