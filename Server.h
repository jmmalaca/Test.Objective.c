//
//  Server.h
//  cocOaTest
//
//  Created by José Miguel Malaca on 13/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Server : NSObject
@property (unsafe_unretained) IBOutlet NSWindow *windOw;

- (IBAction)hiDe:(id)sender;


- (IBAction)startServer:(id)sender;
@property (weak) IBOutlet NSTextField *caixaText_server;
@property (weak) IBOutlet NSTextField *labelText_server;
@property (weak) IBOutlet NSProgressIndicator *progressBar_server;
- (IBAction)send_server:(id)sender;
- (IBAction)sTop_server:(id)sender;


- (IBAction)startClient:(id)sender;
@property (weak) IBOutlet NSTextField *caixaText_client;
@property (weak) IBOutlet NSTextField *labelText_client;
@property (weak) IBOutlet NSProgressIndicator *progressBar_client;
- (IBAction)send_client:(id)sender;

@end
