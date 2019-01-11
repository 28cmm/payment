//
//  PaymentGateway.m
//  payment
//
//  Created by Yilei Huang on 2019-01-11.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway


-(void)processPaymentAmount:(int)input{
    BOOL shouldRun = [self.delegate canProcessPayment];
    
    if(shouldRun){
        [self.delegate processPaymentAmount:input];
    }else{
        NSLog(@"Sorry your payment didn't go through");
    }

}

@end

