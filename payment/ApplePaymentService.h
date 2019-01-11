//
//  ApplePaymentService.h
//  payment
//
//  Created by Yilei Huang on 2019-01-11.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
NS_ASSUME_NONNULL_BEGIN

@interface ApplePaymentService : NSObject <PaymentGatewayDelegate>

@end

NS_ASSUME_NONNULL_END
