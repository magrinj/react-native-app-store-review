//
//  RNAppStoreReview.h
//
//  Created by Jérémy Magrin on 24/04/2017.
//  Copyright © 2017 Jérémy Magrin. All rights reserved.
//

#ifndef AppRate_h
#define AppRate_h

#if __has_include(<React/RCTBridgeModule.h>)
#import <React/RCTBridgeModule.h>
#else
#import "RCTBridgeModule.h"
#endif

#import <StoreKit/StoreKit.h>


@interface RNAppStoreReview: NSObject <RCTBridgeModule, SKStoreProductViewControllerDelegate>

@end

#endif /* AppRate_h */
