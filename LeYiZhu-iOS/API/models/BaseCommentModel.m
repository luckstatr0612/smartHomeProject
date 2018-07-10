//
//  BaseCommentModel.m
//  LeYiZhu-iOS
//
//  Created by 陈 雪峰 on 16/12/3.
//  Copyright © 2016年 lyz. All rights reserved.
//

#import "BaseCommentModel.h"
#import "HotelCommentsModel.h"

@implementation BaseCommentModel

+(NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"comments":@"comments"
             };
}

+ (NSValueTransformer *)commentsJSONTransformer {
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[HotelCommentsModel class]];
}

@end
