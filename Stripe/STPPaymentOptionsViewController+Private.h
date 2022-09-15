//
//  STPPaymentOptionsViewController+Private.h
//  Stripe
//
//  Created by Jack Flintermann on 5/18/16.
//  Copyright © 2016 Stripe, Inc. All rights reserved.
//

#import "Stripe.h"

#import "STPBackendAPIAdapter.h"
#import "STPPaymentConfiguration.h"
#import "STPPaymentOption.h"
#import "STPPaymentOptionTuple.h"
#import "STPPromise.h"

@interface STPPaymentOptionsViewController (Private)

- (instancetype)initWithConfiguration:(STPPaymentConfiguration *)configuration
                           apiAdapter:(id<STPBackendAPIAdapter>)apiAdapter
                       loadingPromise:(STPPromise<STPPaymentOptionTuple *> *)loadingPromise
                                theme:(STPTheme *)theme
                      shippingAddress:(STPAddress *)shippingAddress
                             delegate:(id<STPPaymentOptionsViewControllerDelegate>)delegate;

@end
