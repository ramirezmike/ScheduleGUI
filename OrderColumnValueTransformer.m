//
//  OrderColumnValueTransformer.m
//
//  Created by Michael Ramirez on 2/9/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "OrderColumnValueTransformer.h"

@implementation OrderColumnValueTransformer

-(id)transformedValue:(id)value
{
	NSString* result;
	switch ([value intValue]) {
		case 0:
			result = @"First";
			break;
		case 1:
			result = @"Second";
			break;
		case 2:
			result = @"Third";
			break;
		default:
			break;
	}
	return result;
}

-(id)reverseTransformedValue:(id)value
{	
	NSString* result;
	if ([value stringValue] == @"First") {
		result = [NSString stringWithFormat:@"%d",0];
	}
	if ([value stringValue] == @"Second") {
		result = [NSString stringWithFormat:@"%d",1];
	}
	if ([value stringValue] == @"Third") {
		result = [NSString stringWithFormat:@"%d",2];
	}	
	return result;
}

@end
