//
//  StripePaymentService.m
//  payment
//
//  Created by Yilei Huang on 2019-01-11.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

- (void)processPaymentAmount:(int)input {
     NSLog(@"this is paying through stripe,%i",input);
}

- (BOOL)canProcessPayment {
    int randomNum =arc4random_uniform(2);
    return randomNum;
}


@end
