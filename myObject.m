//
//  myObject.m
//  cocOaTest
//
//  Created by José Miguel Malaca on 30/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "myObject.h"

@implementation myObject
@synthesize insertName;
@synthesize insertPass;
@synthesize showText;

- (IBAction)click:(id)sender {

    //string para o text
    NSString *text = [NSString stringWithFormat: @"Hello, %@ with pass: %@",insertName.stringValue, insertPass.stringValue];
    [showText setStringValue:text];
    
    //retirar valores das caixas de texto
    [insertName setStringValue: @""];
    [insertPass setStringValue: @""];
}

@end
