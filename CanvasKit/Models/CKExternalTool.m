//
//  CKExternalTools.m
//  CanvasKit
//
//  Created by nlambson on 10/7/13.
//  Copyright (c) 2013 Instructure. All rights reserved.
//

#import "CKExternalTool.h"
#import "NSDictionary+DictionaryByAddingObjectsFromDictionary.h"
#import "NSValueTransformer+CKPredefinedTransformerAdditions.h"

@implementation CKExternalTool

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    NSDictionary *keyPaths = @{
                               @"consumerKey": @"consumer_key",
                               @"createdAt": @"created_at",
                               @"updatedAt": @"updated_at",
                               @"privacyLevel": @"privacy_level",
                               @"customFields": @"custom_fields",
                               @"workflowState": @"workflow_state",
                               @"vendorHelpLink": @"vendor_help_link",
                               @"iconURL": @"icon_url"
                               };
    NSDictionary *superPaths = [super JSONKeyPathsByPropertyKey];
    return [superPaths dictionaryByAddingObjectsFromDictionary:keyPaths];
}

+ (NSValueTransformer *)createdAtJSONTransformer
{
    return [NSValueTransformer valueTransformerForName:CKDateTransformerName];
}

+ (NSValueTransformer *)domainJSONTransformer
{
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

+ (NSValueTransformer *)updatedAtJSONTransformer
{
    return [NSValueTransformer valueTransformerForName:CKDateTransformerName];
}

+ (NSValueTransformer *)urlJSONTransformer
{
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

+ (NSValueTransformer *)vendorHelpLinkJSONTransformer
{
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

+ (NSValueTransformer *)iconURLJSONTransformer
{
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

@end