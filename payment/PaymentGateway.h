//
//  PaymentGateway.h
//  payment
//
//  Created by Yilei Huang on 2019-01-11.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@protocol PaymentGatewayDelegate <NSObject>
-(void)processPaymentAmount:(int)input;
-(BOOL)canProcessPayment;

@end


@interface PaymentGateway : NSObject
-(void)processPaymentAmount:(int)input;
@property(weak, nonatomic)id<PaymentGatewayDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
