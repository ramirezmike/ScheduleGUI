//
//  AvailabilityColumnValueTransformer.m
//
//  Created by Michael Ramirez on 2/11/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "AvailabilityColumnValueTransformer.h"

@implementation AvailabilityColumnValueTransformer

-(id)transformedValue:(id)value
{
	NSString* result;
	
	if ([value intValue] == 0) {
		result =@"No";
	}
	else {
		result = @"Yes";
	}
	
	return result;
}

+(BOOL)allowsReverseTransformation
{
	return NO;
}


@end
