//
//  PositionColumnValueTransformer.m
//
//  Created by Michael Ramirez on 2/9/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "PositionColumnValueTransformer.h"

@implementation PositionColumnValueTransformer

-(id)transformedValue:(id)value
{
	NSString* result;
	switch ([value intValue]) {
		case 0:
			result = @"FOH";
			break;
		case 1:
			result = @"BOH";
			break;
		case 2:
			result = @"BOTH";
			break;
		default:
			break;
	}
	return result;
}

-(id)reverseTransformedValue:(id)value
{	
	NSString* result;
	if ([value stringValue] == @"FOH") {
		result = [NSString stringWithFormat:@"%d",0];
	}
	if ([value stringValue] == @"BOH") {
		result = [NSString stringWithFormat:@"%d",1];
	}
	if ([value stringValue] == @"BOTH") {
		result = [NSString stringWithFormat:@"%d",2];
	}	
	return result;
}


@end
