//
//  GetHotelCommentRequest.h
//  LeYiZhu-iOS
//
//  Created by 陈 雪峰 on 16/12/3.
//  Copyright © 2016年 lyz. All rights reserved.
//

#import "IRequest.h"

@interface GetHotelCommentRequest : AbstractRequest

@property (nonatomic, copy) NSString *versioncode;

@property (nonatomic, copy) NSString *devicenum;

@property(nonatomic, copy) NSString *fromtype;

@property(nonatomic, copy) NSString * hotelID;

@property(nonatomic, copy) NSString *limit;

@property(nonatomic, copy) NSString *pages;

@property(nonatomic, copy) NSString *tagId;


@end
