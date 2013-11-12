//
//  CKIClient+CKIModel.h
//  CanvasKit
//
//  Created by Jason Larsen on 11/12/13.
//  Copyright (c) 2013 Instructure. All rights reserved.
//

#import "CKIClient.h"

@class CKIModel;

@interface CKIClient (CKIModel)

- (void)refreshModel:(CKIModel *)model success:(void (^)())success failure:(void (^)(NSError *error))failure;

@end
