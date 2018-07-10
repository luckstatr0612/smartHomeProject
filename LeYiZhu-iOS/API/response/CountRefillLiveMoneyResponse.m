//
//  CountRefillLiveMoneyResponse.m
//  LeYiZhu-iOS
//
//  Created by mac on 2017/4/12.
//  Copyright © 2017年 乐易住智能科技. All rights reserved.
//

#import "CountRefillLiveMoneyResponse.h"
#import "CountRefillLiveMoneyModel.h"
@implementation CountRefillLiveMoneyResponse

+(NSDictionary *) JSONKeyPathsByPropertyKey {
    return @{
             @"refillModel":@"data"
             };
}

+(NSValueTransformer *)refillModelJSONTransformer
{
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[CountRefillLiveMoneyModel class]];
}


@end
