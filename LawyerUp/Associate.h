//
//  Associate.h
//  LawyerUp
//
//  Created by Thiago Heitling on 2016-01-23.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Lawyer.h"

@interface Associate : NSObject <AssociateDelegate>

-(void)addClientToClientList:(Client *)client forLawyer:(Lawyer *)lawyer;
-(float)payableAmountForClient:(Client *)client forLawyer:(Lawyer *)lawyer;

@end
