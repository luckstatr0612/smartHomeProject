//
//  GetVIPLevelListRequest.m
//  LeYiZhu-iOS
//
//  Created by mac on 2017/8/10.
//  Copyright © 2017年 乐易住智能科技. All rights reserved.
//

#import "GetVIPLevelListRequest.h"
#import "GetVIPLevelListResponse.h"

@implementation GetVIPLevelListRequest

- (NSMutableDictionary *) getHeaders
{
    return self.headers;
}

- (NSMutableDictionary *) getQueryParameters
{
    return self.queryParameters;
}

- (NSMutableDictionary *) getPathParameters
{
    return self.pathParameters;
}

- (Class) getResponseClazz
{
    return [GetVIPLevelListResponse class];
}



@end