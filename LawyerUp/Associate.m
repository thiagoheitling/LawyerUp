//
//  Associate.m
//  LawyerUp
//
//  Created by Thiago Heitling on 2016-01-23.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import "Associate.h"
#import "Practice.h"

@interface Lawyer ()

@property (nonatomic, strong) NSNumber *rate;
@property (nonatomic, strong) NSMutableSet *clientList;

@end

@implementation Associate

-(void)addClientToClientList:(Client *)client forLawyer:(Lawyer *)lawyer
{
    if (![lawyer.clientList containsObject:client]) {
        
        if (client.specialty == lawyer.specialty) {
        
            [lawyer.clientList addObject:client];
            NSLog(@"Client %@ has been added to Lawyer %@'s client list.", client.name, lawyer.name);
        }
        else {
            NSLog(@"Client %@ could not be added to Lawyer %@'s client list as the specialization needed is incompatible.", client.name, lawyer.name);
        }
    }
    else {
        NSLog (@"Client %@ is already on Lawyer %@'s client list.", client.name, lawyer.name);
    }
}

-(float)payableAmountForClient:(Client *)client forLawyer:(Lawyer *)lawyer
{
    float payableAmountForClient = 0.0;
    
    if([lawyer.clientList containsObject:client]) {
        
        Practice *practice = [[Practice alloc] init];
        
        lawyer.rate = [practice.specialtyRates objectForKey:[practice specialtyString:lawyer.specialty]];
        
        if (client.problemDescription.length < 10) {
            
            payableAmountForClient = 5 * [lawyer.rate floatValue];
        }
        else if (client.problemDescription.length >= 10 && client.problemDescription.length <= 20) {
            
            payableAmountForClient = 10 * [lawyer.rate floatValue];
        }
        else {
            
            payableAmountForClient = 25 * [lawyer.rate floatValue];
        }
    }
    
    NSLog(@"Total amount $%0.2f to be paid by client %@ to Lawyer %@.", payableAmountForClient, client.name, lawyer.name);
    
    return payableAmountForClient;
}

@end
