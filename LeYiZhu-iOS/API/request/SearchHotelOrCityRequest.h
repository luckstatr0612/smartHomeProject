//
//  SearchHotelOrCityRequest.h
//  LeYiZhu-iOS
//
//  Created by smart home on 2016/12/14.
//  Copyright © 2016年 lyz. All rights reserved.
//

#import "IRequest.h"

@interface SearchHotelOrCityRequest : AbstractRequest

@property (nonatomic, copy) NSString *versioncode;

@property (nonatomic, copy) NSString *devicenum;

@property (nonatomic, copy) NSString *fromtype;

@property (nonatomic, copy) NSString *keywords;

@property (nonatomic, copy) NSString *longitude;

@property (nonatomic, copy) NSString *latitude;

@property (nonatomic, copy) NSString *limit;

@property (nonatomic, copy) NSString *pages;


@end