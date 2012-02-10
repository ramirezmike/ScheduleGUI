//
//  RadioMatrixValueTransformer.m
//
//  Created by Michael Ramirez on 2/9/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "RadioMatrixValueTransformer.h"

@implementation RadioMatrixValueTransformer

+(Class)transformedValueClass
{
	return [NSNumber class];
}

-(id)transformedValue:(id)value
{
	NSNumber* result = [NSNumber 
				numberWithInt:[value intValue]];
	return result;
}

-(id)reverseTransformedValue:(id)value
{	
	NSString* result = [NSString 
				stringWithFormat:@"%d",[value intValue]];
	return result;
}

@end
