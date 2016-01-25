//
//  main.m
//  LawyerUp
//
//  Created by Thiago Heitling on 2016-01-23.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Associate.h"
#import "Lawyer.h"
#import "Client.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Lawyer *marc = [[Lawyer alloc] initWithName:@"Marc" andSpecialty:familyLaw];
        Associate *steve = [[Associate alloc]init];
        
        Lawyer *john = [[Lawyer alloc] initWithName:@"John" andSpecialty:corporateLaw];
        Associate *paul = [[Associate alloc]init];
        
        marc.delegate = steve;
        john.delegate = paul;
        
        Client *bill = [[Client alloc] initWithName:@"Bill" problemDescription:@"Simple problem!" andSpecialty:familyLaw];
        Client *jack = [[Client alloc] initWithName:@"Jack" problemDescription:@"Very complex corporate problem!" andSpecialty:corporateLaw];
        
        //case1: client Bill wants to be added to Lawyer Marc's client list, specialties compatibles
        [marc addClient:bill];
        [marc getPayableAmountForClient:bill];

        //case2: client Bill tries to be added for a 2nd time to Lawyer Marc's client list
        [marc addClient:bill];
        
        //case3: client Bill wants to be added to Lawyer Marc's client list, specialties incompatibles
        [marc addClient:jack];
        [marc getPayableAmountForClient:jack]; //marc tries to get paid by a jack, who is not on its client list
        
        //case4: client Jack wants to be added to Lawyer John's client list, specialties compatibles
        [john addClient:jack];
        [john getPayableAmountForClient:jack];
        
    }
    return 0;
}
