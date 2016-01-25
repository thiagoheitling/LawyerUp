//
//  Lawyer.m
//  LawyerUp
//
//  Created by Thiago Heitling on 2016-01-23.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import "Lawyer.h"
#import "Associate.h"

@interface Lawyer ()

@property (nonatomic, strong) NSNumber *rate;
@property (nonatomic, strong) NSMutableSet *clientList;

@end

@implementation Lawyer

- (instancetype)initWithName:(NSString *)name andSpecialty:(Specialty)specialty
{
    self = [super init];
    if (self) {
        _name = name;
        _specialty = specialty;
        _clientList = [[NSMutableSet alloc]init];
    }
    return self;
}

-(void)addClient:(Client *)client
{
    [self.delegate addClientToClientList:client forLawyer:self];
}

-(float)getPayableAmountForClient:(Client *)client
{
    return [self.delegate payableAmountForClient:client forLawyer:self];
}

@end
