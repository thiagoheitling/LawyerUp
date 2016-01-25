//
//  AssociateDelegate.h
//  LawyerUp
//
//  Created by Thiago Heitling on 2016-01-23.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Client;
@class Lawyer;

@protocol AssociateDelegate <NSObject>

-(void)addClientToClientList:(Client *)client forLawyer:(Lawyer *)lawyer;
-(float)payableAmountForClient:(Client *)client forLawyer:(Lawyer *)lawyer;

@end
