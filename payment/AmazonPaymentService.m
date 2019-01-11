//
//  AmazonPaymentService.m
//  payment
//
//  Created by Yilei Huang on 2019-01-11.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService
- (void)processPaymentAmount:(int)input {
     NSLog(@"this is paying through amazon,%i",input);
}

-(BOOL)canProcessPayment {
    int randomNum =arc4random_uniform(2);
    return randomNum;
}
@end
