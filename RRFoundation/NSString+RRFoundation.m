// RRFoundation NSString+RRFoundation.m
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

#import "NSString+RRFoundation.h"

@implementation NSString(RRFoundation)

- (NSArray *)paragraphs
{
	NSMutableArray *lines = [NSMutableArray array];
	NSUInteger length = [self length];
	NSUInteger start = 0, end = 0, contentsEnd = 0;
	while (end < length)
	{
		[self getParagraphStart:&start end:&end contentsEnd:&contentsEnd forRange:NSMakeRange(end, 0)];
		[lines addObject:[self substringWithRange:NSMakeRange(start, contentsEnd - start)]];
	}
	return [lines copy];
}

@end
