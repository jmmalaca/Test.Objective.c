//
//  Server.m
//  cocOaTest
//
//  Created by José Miguel Malaca on 13/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Server.h"
#import "Pessoa.h"

@implementation Server
@synthesize progressBar_client;
@synthesize progressBar_server;
@synthesize caixaText_client;
@synthesize labelText_client;
@synthesize caixaText_server;
@synthesize labelText_server;
@synthesize windOw;

- (IBAction)hiDe:(id)sender {
    [windOw setIsVisible: false];
}

Pessoa *pips = nil;
NSConnection *serverConnection = nil;

- (IBAction)startServer:(id)sender {

    // Create the Person to vend
    pips = [[Pessoa alloc] initWithName: caixaText_server.stringValue];
    
    serverConnection = [NSConnection serviceConnectionWithName:@"person_server" rootObject: pips];
    
    //Start the server
    [serverConnection runInNewThread];
    [progressBar_server startAnimation:self];
}

- (IBAction)sTop_server:(id)sender {
    
    //...
    
}

NSDistantObject *serverObject = nil;
id< Protocolo_Pessoa > remoteObject = nil;

- (IBAction)startClient:(id)sender {
    
    //Until we find the server
    while (serverObject == nil)
    {
        serverObject = [NSConnection rootProxyForConnectionWithRegisteredName:@"person_server" host:nil];
        [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:1.]];
        [progressBar_client startAnimation:self];
    }
    [progressBar_client stopAnimation:self];
    
    //We cast the remote object in the interface we know 
    remoteObject = (id< Protocolo_Pessoa >)serverObject;
    
    //we use our remote object
    [labelText_server setStringValue: [remoteObject getName]];
}

- (IBAction)send_server:(id)sender {
    
    //...
    [pips setName:caixaText_server.stringValue];
    
}

- (IBAction)send_client:(id)sender {
    
    //...
    //We cast the remote object in the interface we know...
    
    [remoteObject setName: caixaText_client.stringValue];
    
}
@end
