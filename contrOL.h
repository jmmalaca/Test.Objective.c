//
//  contrOL.h
//  cocOaTest
//
//  Created by José Miguel Malaca on 30/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>

@interface contrOL : NSObject <NSApplicationDelegate>{
    //access to the window
    IBOutlet id window;
    
    //window 4...
    NSTextField *redLabel;
    NSTextField *greenLabel;
    NSTextField *blueLabel;
    
}

@property (weak) IBOutlet NSTextField *textTitle;
@property (weak) IBOutlet NSTextField *textAlpha;

//controls
- (IBAction)center:(NSButton *)sender;
- (IBAction)semiHide:(NSButton *)sender;
- (IBAction)close:(NSButton *)sender;
- (IBAction)title:(NSButton *)sender;
- (IBAction)background:(id)sender;

//action... clicar e acontecer
- (IBAction)down:(NSButton *)sender;
- (IBAction)left:(NSButton *)sender;
- (IBAction)right:(NSButton *)sender;
- (IBAction)up:(NSButton *)sender;

//window 2
@property (unsafe_unretained) IBOutlet NSPanel *window2;
- (IBAction)shOw2:(id)sender;
- (IBAction)hiDe2:(id)sender;

//window 3
@property (unsafe_unretained) IBOutlet NSPanel *window3;
- (IBAction)shOw3:(id)sender;
- (IBAction)hiDe3:(id)sender;

- (IBAction)gOb:(id)sender;
@property (weak) IBOutlet NSTextField *urL;
@property (weak) IBOutlet WebView *webView;

//window window 4: quartZ
@property (unsafe_unretained) IBOutlet NSWindow *window4;
- (IBAction)shOwQ:(id)sender;
- (IBAction)hiDeQ:(id)sender;

//controlo das imagens
@property (weak) IBOutlet NSImageView *viewImage;

//window 4...
- (IBAction)doSliderRED:(id)valor;
- (IBAction)doSliderGREEN:(id)valor;
- (IBAction)doSliderBLUE:(id)valor;

@property (unsafe_unretained) IBOutlet NSWindow *window_ex;

//window server
@property (unsafe_unretained) IBOutlet NSWindow *serverWindow;
- (IBAction)shOwServer:(id)sender;

@end
