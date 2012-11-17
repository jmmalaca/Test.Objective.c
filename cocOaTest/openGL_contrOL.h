//
//  openGL_contrOL.h
//  cocOaTest
//
//  Created by José Miguel Malaca on 02/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface openGL_contrOL : NSOpenGLView{
    float rot;
    NSTimer *timer;
    NSString *red;
    NSString *green;
    NSString *blue;
}

@property (unsafe_unretained) IBOutlet NSWindow *window4;

//openGL draw
- (void) drawRect: (NSRect) bounds;

@property (weak) IBOutlet NSTextField *redValue;
@property (weak) IBOutlet NSTextField *greenValue;
@property (weak) IBOutlet NSTextField *blueValue;

@end