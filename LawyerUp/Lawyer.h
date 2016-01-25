//
//  Lawyer.h
//  LawyerUp
//
//  Created by Thiago Heitling on 2016-01-23.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AssociateDelegate.h"
#import "Client.h"

@interface Lawyer : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic) Specialty specialty;
@property (nonatomic, weak) id<AssociateDelegate> delegate;

- (instancetype)initWithName:(NSString *)name andSpecialty:(Specialty)specialty;

-(void)addClient:(Client *)client;
-(float)getPayableAmountForClient:(Client *)client;

@end
