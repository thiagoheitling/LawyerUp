//
//  Practice.m
//  LawyerUp
//
//  Created by Thiago Heitling on 2016-01-23.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import "Practice.h"

@implementation Practice

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _specialtyRates = [NSDictionary dictionaryWithObjectsAndKeys:
                               [NSNumber numberWithFloat:200.00], @"Family Law",
                               [NSNumber numberWithFloat:380.50], @"Patent Law",
                               [NSNumber numberWithFloat:405.99], @"Criminal Law",
                               [NSNumber numberWithFloat:400.00], @"Corporate Law",
                               nil];
    }
    return self;
}

-(NSString *)specialtyString:(Specialty)specialty
{
    if(specialty == familyLaw) {
        return @"Family Law";
    }
    if(specialty == patentLaw) {
        return @"Patent Law";
    }
    if(specialty == criminalLaw) {
        return @"Criminal Law";
    }
    else {
        return @"Corporate Law";
    }
}

//+(NSMutableSet *)addLawyerToPracticesCollection:(Lawyer *)lawyer
//{
//    NSMutableSet *practicesCollection = [[NSMutableSet alloc] initWithObjects:lawyer, nil];
//    return practicesCollection;
//}

@end
