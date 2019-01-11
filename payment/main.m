//
//  main.m
//  payment
//
//  Created by Yilei Huang on 2019-01-11.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
//#import "PaymentGateway.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "PaypalPaymentService.h"
#import "ApplePaymentService.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber *dollar = @(arc4random_uniform(900)+100);
        InputHandler *inputHandler =[InputHandler new];
        PaymentGateway *paymentGateWay =[PaymentGateway new];
        PaypalPaymentService * paypalPaymentService = [PaypalPaymentService new];
        StripePaymentService *stripePaymentService = [StripePaymentService new];
        AmazonPaymentService *amazonPaymentService =[AmazonPaymentService new];
        ApplePaymentService *applePaymentService = [ApplePaymentService new];
        int payTypeInput=[[inputHandler convertToString:@"Thank you for shopping at Acme.com Your total today is $xxx Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon  4:apple"] intValue];
        switch (payTypeInput){
            case 1:{
               // PaypalPaymentService * paypalPaymentService = [PaypalPaymentService new];
                [paypalPaymentService processPaymentAmount:dollar.intValue];
                paymentGateWay.delegate = paypalPaymentService;
                break;
                
            }case 2:{
                [stripePaymentService processPaymentAmount:dollar.intValue];
                paymentGateWay.delegate = stripePaymentService;
                break;
            }case 3:{
                [amazonPaymentService processPaymentAmount:dollar.intValue];
                paymentGateWay.delegate = amazonPaymentService;
                break;
            }case 4:{
                [applePaymentService processPaymentAmount:dollar.intValue];
                paymentGateWay.delegate = applePaymentService;
            }
            
        }
       // [ processPaymentAmount:dollar.intValue]
        //[paymentGateWay processPaymentAmount:]
    
        
    }
    return 0;
}
