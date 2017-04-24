//
//  RNAppStoreReview.m
//
//  Created by Jérémy Magrin on 24/04/2017.
//  Copyright © 2017 Jérémy Magrin. All rights reserved.
//

#import "RNAppStoreReview.h"

#import <Foundation/Foundation.h>

#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)

@implementation RNAppStoreReview

RCT_EXPORT_MODULE();

- (dispatch_queue_t) methodQueue
{
    return dispatch_get_main_queue();
}

- (UIViewController*) getRootVC {
    UIViewController *root = [[[[UIApplication sharedApplication] delegate] window] rootViewController];
    while (root.presentedViewController != nil) {
        root = root.presentedViewController;
    }

    return root;
}

- (void) openStoreProductWithiTunesItemIdentifierWithinApp:(NSString *) appIdentifier {
    UIViewController *root = [self getRootVC];

    SKStoreProductViewController *storeViewController = [[SKStoreProductViewController alloc] init];
    storeViewController.delegate = self;

    NSDictionary *parameters = @{ SKStoreProductParameterITunesItemIdentifier: appIdentifier };

    [storeViewController loadProductWithParameters:parameters completionBlock:^(BOOL result, NSError *error)  {
        if (result) {
            [root presentViewController:storeViewController animated:YES completion:nil];
        } else {
            NSLog(@"ERROR WITH STORE CONTROLLER %@\n", error.description);
            //redirect to app store
            [self openStoreProductWithiTunesItemIdentifier:appIdentifier];
        }
    }];
}

- (void) openStoreProductWithiTunesItemIdentifier:(NSString *) appIdentifier {
    NSString *strUrl = [NSString stringWithFormat:@"%@%@%@", @"itms-apps://itunes.apple.com/app/id", appIdentifier, @"?action=write-review"];
    NSURL *url = [NSURL URLWithString: strUrl];

    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        [[UIApplication sharedApplication] openURL:url];
    }
}

- (void) productViewControllerDidFinish:(SKStoreProductViewController*)viewController {
    [viewController dismissViewControllerAnimated:YES completion:nil];
}

RCT_EXPORT_METHOD(requestReview:(NSString *) appIdentifier)
{
    if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"10.3")) {
        [SKStoreReviewController requestReview];
    } else if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"8.0")) {
        [self openStoreProductWithiTunesItemIdentifierWithinApp:appIdentifier];
    } else {
        [self openStoreProductWithiTunesItemIdentifier:appIdentifier];
    }
}

@end
