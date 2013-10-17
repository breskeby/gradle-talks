//
//  MyView.m
//  SampleCocoaApp
//
//  Created by René Gröschke on 04.06.13.
//  Copyright (c) 2013 René Gröschke. All rights reserved.
//

#import "MyView.h"
#import <QuartzCore/QuartzCore.h>

@implementation MyView
- (void) awakeFromNib {
    CALayer *largeLayer = [CALayer layer];
    [largeLayer setName:@"large"];
    [largeLayer setDelegate:self];
    [largeLayer setBounds:[self bounds]];
    [largeLayer setBorderWidth:4.0];
    [largeLayer setLayoutManager:[CAConstraintLayoutManager
                                  layoutManager]];
    
    CALayer *smallLayer = [CALayer layer];
    [smallLayer setName:@"small"];
    CGImageRef image = [self convertImage:[NSImage
        imageNamed:@"gradle"]];
    [smallLayer setBounds:CGRectMake(0, 0, CGImageGetWidth(image),
                                     CGImageGetHeight(image))];
    
    [smallLayer setContents:(__bridge id)image];
    [smallLayer addConstraint:[CAConstraint
                               constraintWithAttribute:kCAConstraintMidY
                               relativeTo:@"superlayer"
                               attribute:kCAConstraintMidY]];
    
    [smallLayer addConstraint:[CAConstraint
            constraintWithAttribute:kCAConstraintMidX
                               relativeTo:@"superlayer"
                               attribute:kCAConstraintMidX]];
                               CFRelease(image);
                               [largeLayer addSublayer:smallLayer];
                               [largeLayer setNeedsDisplay];
                               [self setLayer:largeLayer];
                               [self setWantsLayer:YES];
    }

- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)context {
    CGContextSetRGBFillColor(context, .5, .5, .5, 1);
    CGContextFillRect(context, [layer bounds]);
}

- (CGImageRef) convertImage:(NSImage *)image {
    CGImageSourceRef source = CGImageSourceCreateWithData((__bridge CFDataRef
                                                           )[image TIFFRepresentation],
                                                          NULL);
    CGImageRef imageRef = CGImageSourceCreateImageAtIndex(source, 0,
                                                          NULL);
    CFRelease(source);
    return imageRef;
}
@end
