//
//  contrOL.m
//  cocOaTest
//
//  Created by José Miguel Malaca on 30/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "contrOL.h"
#import <WebKit/WebKit.h>

@implementation contrOL
@synthesize serverWindow;
@synthesize window_ex;
@synthesize viewImage;
@synthesize window4;
@synthesize urL;
@synthesize webView;

@synthesize window2;
@synthesize window3;

@synthesize textTitle;
@synthesize textAlpha;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    NSLog(@"init contrOL");
    
}

- (IBAction)center:(NSButton *)sender {
    [window center];
}

- (IBAction)semiHide:(NSButton *)sender {
    NSNumberFormatter * numFormatter = [[NSNumberFormatter alloc] init];
    [numFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
    
    NSNumber *num = [numFormatter numberFromString: textAlpha.stringValue];
    
    [window setAlphaValue:num.floatValue];
}

- (IBAction)close:(NSButton *)sender {
    [window close];
}

- (IBAction)title:(NSButton *)sender {
    [window setTitle: [NSString stringWithFormat:@"%@",textTitle.stringValue]];
    [window2 setTitle: [NSString stringWithFormat:@"%@",textTitle.stringValue]];
}

- (IBAction)background:(id)sender {
    [window2 setBackgroundColor:[NSColor orangeColor]];
}

//controlo da posicao da janela pelos botoes
- (IBAction)down:(NSButton *)sender {
    NSRect frame = [window frame];
    NSPoint origem = frame.origin;
    
    origem.y = origem.y - 20;
    
    [window setFrameOrigin:origem];
}

- (IBAction)left:(NSButton *)sender {
    NSRect frame = [window frame];
    NSPoint origem = frame.origin;
    
    origem.x = origem.x - 20;
    
    [window setFrameOrigin:origem];
}

- (IBAction)right:(NSButton *)sender {
    NSRect frame = [window frame];
    NSPoint origem = frame.origin;
    
    origem.x = origem.x + 20;
    
    [window setFrameOrigin:origem];
}

- (IBAction)up:(NSButton *)sender {
    NSRect frame = [window frame];
    NSPoint origem = frame.origin;
    
    origem.y = origem.y + 20;
    
    [window setFrameOrigin:origem];
}

- (IBAction)shOw2:(id)sender {
    [window2 setIsVisible:true];
    [window makeKeyWindow];
    
    NSString *inFilePath = @"/Users/cartOOn/Documents/wOrk/xCode_Objective-C/cocOaTest/cartoon.jpg";
    NSImage *testImage = [[NSImage alloc] initWithContentsOfFile:inFilePath];
    
    //imageView is your outlet
    [viewImage setImage:testImage];
}

- (IBAction)hiDe2:(id)sender {
    [window2 setIsVisible:false];
}

- (IBAction)shOw3:(id)sender {
    [window3 setIsVisible:true];
    [window3 setFloatingPanel:false];
    [window makeKeyWindow];
    [[webView mainFrame] loadRequest:[NSURLRequest requestWithURL: [NSURL URLWithString:[NSString stringWithFormat: @"http://www.apple.com"]]]];

}

- (IBAction)hiDe3:(id)sender {
    [window3 setIsVisible:false];
}

- (IBAction)gOb:(id)sender {
    //gO to url
    [[webView mainFrame] loadRequest:[NSURLRequest requestWithURL: [NSURL URLWithString:[NSString stringWithFormat: @"http://%@",urL.stringValue]]]];
}

- (IBAction)shOwQ:(id)sender {
    [window4 setIsVisible:true];
    [window makeKeyWindow];
}

- (IBAction)hiDeQ:(id)sender {
    [window4 setIsVisible:false];
}

- (IBAction) doSliderRED: (id)valor {
    NSString *valuR = [NSString stringWithFormat:@"%.2f",[valor floatValue]];
    NSLog(@"reD: value=%@",valuR);
    
    [redLabel setStringValue: valuR];
}

- (IBAction) doSliderGREEN: (id)valor {
    NSString *valuG = [NSString stringWithFormat:@"%.2f",[valor floatValue]];
	NSLog(@"gReen: value=%@",valuG);  
    
    [greenLabel setStringValue: valuG];
}

- (IBAction) doSliderBLUE: (id)valor {
    NSString *valuB = [NSString stringWithFormat:@"%.2f",[valor floatValue]];
    NSLog(@"bLue: value=%@",valuB);
    
    [blueLabel setStringValue: valuB];
}

- (IBAction)shOwServer:(id)sender {
    [serverWindow setIsVisible:true];
}
@end
