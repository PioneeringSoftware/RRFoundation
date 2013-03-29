// RRFoundationTests RRFoundationTests.m
//
// Copyright © 2013, Roy Ratcliffe, Pioneering Software, United Kingdom
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the “Software”), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
//	The above copyright notice and this permission notice shall be included in
//	all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED “AS IS,” WITHOUT WARRANTY OF ANY KIND, EITHER
// EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO
// EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES
// OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
// ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
// DEALINGS IN THE SOFTWARE.
//
//------------------------------------------------------------------------------

#import "RRFoundationTests.h"

#import <RRFoundation/RRFoundation.h>

@implementation RRFoundationTests

- (void)testVersionString
{
	// Short version string corresponds to the marketing version. You can change
	// it at the command line using `agvtool new-marketing-version x.y` where
	// `x.y` stands for the major.minor version numbers; patch version elided
	// because the marketing version cannot take three version number
	// components, only two.
	NSBundle *bundle = [NSBundle bundleWithIdentifier:@"uk.co.pioneeringsoftware.RRFoundation"];
	NSDictionary *info = [bundle infoDictionary];
	NSString *bundleShortVersionString = [info objectForKey:@"CFBundleShortVersionString"];
	NSString *bundleVersion = [info objectForKey:(NSString *)kCFBundleVersionKey];
	NSString *versionString = [NSString stringWithFormat:@"@(#)PROGRAM:RRFoundation  PROJECT:RRFoundation-%@", bundleVersion];
	STAssertEqualObjects(RRFoundationVersionString(), versionString, nil);
	STAssertEquals(kRRFoundationVersionNumber, [bundleShortVersionString doubleValue], nil);
}

@end
