//
//  myObject.h
//  cocOaTest
//
//  Created by José Miguel Malaca on 30/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface myObject : NSObject
@property (weak) IBOutlet NSTextField *insertName;
@property (weak) IBOutlet NSSecureTextField *insertPass;
@property (weak) IBOutlet NSTextField *showText;

- (IBAction)click:(id)sender;
@end
