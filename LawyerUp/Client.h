//
//  Client.h
//  LawyerUp
//
//  Created by Thiago Heitling on 2016-01-23.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Practice.h"

@interface Client : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic,strong) NSString *problemDescription;
@property (nonatomic) Specialty specialty;

- (instancetype)initWithName:(NSString *)name problemDescription:(NSString *)problemDescription andSpecialty:(Specialty)specialty;

@end
