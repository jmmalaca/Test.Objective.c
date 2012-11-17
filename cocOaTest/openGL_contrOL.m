//
//  openGL_contrOL.m
//  cocOaTest
//
//  Created by José Miguel Malaca on 02/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "openGL_contrOL.h"
#include <OpenGL/gl.h>

@implementation openGL_contrOL
@synthesize redValue;
@synthesize greenValue;
@synthesize blueValue;
@synthesize window4;

-(void) awakeFromNib
{
    rot = 0;
    timer = [NSTimer timerWithTimeInterval: (1.0f/60.0f) target:self selector:@selector(animTimer:) userInfo:nil repeats:YES];
    
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSEventTrackingRunLoopMode];
}

-(void) animTimer : (NSTimer *) atime
{
    [self setNeedsDisplay: YES];
}

static void drawAnObject ()
{
    glColor3f(1.0f, 0.85f, 0.35f);
    glBegin(GL_TRIANGLES);
    {
        glVertex3f(  0.0,  0.6, 0.0);
        glVertex3f( -0.2, -0.3, 0.0);
        glVertex3f(  0.2, -0.3 ,0.0);
    }
    glEnd();
}

-(void) drawRect: (NSRect) bounds{
    glClearColor(0,0,0,0);
    glClear(GL_COLOR_BUFFER_BIT);
    
    glLoadIdentity();
    glRotatef(rot,0,1,0);
    
    drawAnObject();
    
    //NSLog(@" -R: %@, -G: %@, -B: %@",[redValue stringValue], [greenValue stringValue], [blueValue stringValue]);
    
    glFlush();
    rot++;
}

@end
