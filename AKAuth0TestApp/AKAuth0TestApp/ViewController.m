//
//  ViewController.m
//  AKAuth0TestApp
//
//  Created by Iuliia Zhelem on 27.06.16.
//  Copyright © 2016 Akvelon. All rights reserved.
//

#import "ViewController.h"
#import <Lock/Lock.h>

@interface ViewController ()
- (IBAction)clickOpenLockUIButton:(id)sender;
@end

@implementation ViewController

- (IBAction)clickOpenLockUIButton:(id)sender {
    A0Lock *lock = [A0Lock sharedLock];
    
    A0LockSignUpViewController *controller = [lock newSignUpViewController];
    controller.useWebView = NO;
    controller.onAuthenticationBlock = ^(A0UserProfile *profile, A0Token *token) {
        [self dismissViewControllerAnimated:YES completion:nil];
    };
    
    [self presentViewController:controller animated:YES completion:nil];
}

@end
