//
//  Practice.h
//  LawyerUp
//
//  Created by Thiago Heitling on 2016-01-23.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Lawyer;

@interface Practice : NSObject

typedef enum specialty {
    familyLaw,
    patentLaw,
    criminalLaw,
    corporateLaw,
}Specialty;

@property (nonatomic, strong) NSDictionary *specialtyRates;

-(NSString *)specialtyString:(Specialty)specialty;

@end
