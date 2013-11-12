//
//  CKILoginViewController.h
//  OAuthTesting
//
//  Created by rroberts on 8/22/13.
//  Copyright (c) 2013 Instructure. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CKIClient;

typedef void (^CKIOAuthSuccessBlock)(void);
typedef void (^CKIOAuthFailureBlock)(NSError *error);

@interface CKILoginViewController : UIViewController

@property (nonatomic, strong) UIWebView *webView;

/**
 Block to be performed when authentication is successful
 */
@property (nonatomic, strong) CKIOAuthSuccessBlock oauthSuccessBlock;

/**
 Block to be performed when authentication fails
 */
@property (nonatomic, strong) CKIOAuthFailureBlock oauthFailureBlock;

/**
 Domain used for authentication
 */
@property (nonatomic, readonly) NSString *domain;

/**
 The client for this domain.
 
 @see domain
 */
@property (nonatomic, readonly) CKIClient *client;

- (id)initWithDomain:(NSString *)domain success:(void(^)(void))success failure:(void(^)(NSError *error))failure;
- (void)cancelOAuth;


@end
