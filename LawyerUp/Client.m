//
//  Client.m
//  LawyerUp
//
//  Created by Thiago Heitling on 2016-01-23.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import "Client.h"

@implementation Client

- (instancetype)initWithName:(NSString *)name problemDescription:(NSString *)problemDescription andSpecialty:(Specialty)specialty
{
    self = [super init];
    if (self) {
        _name = name;
        _problemDescription = problemDescription;
        _specialty = specialty;
    }
    return self;
}

-(NSString *)description
{    
    NSString *clientDescription = [NSString stringWithFormat:@"Client name: %@ | Problem description: %@", self.name, self.problemDescription];
    return clientDescription;
}

@end
