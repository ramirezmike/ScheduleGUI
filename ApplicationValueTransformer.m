//
//  ApplicationValueTransformer.m
//
//  Created by Michael Ramirez on 2/9/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "ApplicationValueTransformer.h"

@implementation ApplicationValueTransformer

+(Class)transformedValueClass
{
	return [NSString class];
}

+(BOOL)allowsReverseTransformation
{
	return YES;
}


@end
