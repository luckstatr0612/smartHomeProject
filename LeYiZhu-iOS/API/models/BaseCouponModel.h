//
//  BaseCouponModel.h
//  LeYiZhu-iOS
//
//  Created by mac on 2017/8/3.
//  Copyright © 2017年 乐易住智能科技. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface BaseCouponModel : MTLModel<MTLJSONSerializing>

@property (nonatomic, readonly, strong) NSArray *couponjar;

@end