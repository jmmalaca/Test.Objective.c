//
//  Pessoa.m
//  cocOaTest
//
//  Created by José Miguel Malaca on 13/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Pessoa.h"

@implementation Pessoa

- (id)initWithName:(NSString *)name{
    self = [super init];
    if(self)
    {
        nome = name;
    }
    
    return self;
}

- (NSString *)getName{
    return nome;
}

- (void)setName:(NSString *)name{
    nome = name;
}

@end
