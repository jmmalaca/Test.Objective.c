//
//  Pessoa.h
//  cocOaTest
//
//  Created by José Miguel Malaca on 13/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Protocolo_Pessoa.h"

@interface Pessoa : NSObject < Protocolo_Pessoa > {
    NSString *nome;
}

-(id) initWithName: (NSString *)name;

- (NSString *)getName;

- (void)setName:(NSString *)name;

@end