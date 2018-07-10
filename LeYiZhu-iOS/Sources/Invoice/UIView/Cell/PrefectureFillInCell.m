//
//  PrefectureFillInCell.m
//  LeYiZhu-iOS
//
//  Created by mac on 2017/7/17.
//  Copyright © 2017年 乐易住智能科技. All rights reserved.
//

#import "PrefectureFillInCell.h"
#import "NSString+Size.h"
#import "RecieverInfoModel.h"

#define kTitle_content_space 20.0f
#define kTFWidth 250.0f
#define minCellHeight 62.0f

@interface PrefectureFillInCell ()

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *contentLabel;
@property (nonatomic, strong) UIImageView *arrowImgView;

@end

@implementation PrefectureFillInCell

- (void)setupCell {
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)buildSubview {
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    self.titleLabel.textColor = LYZTheme_BrownishGreyFontColor;
    self.titleLabel.font = [UIFont fontWithName:LYZTheme_Font_Regular size:14];
    [self addSubview:self.titleLabel];
    
    self.contentLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    self.contentLabel.numberOfLines = 0;
    [self addSubview:self.contentLabel];
    
    self.arrowImgView = [[UIImageView alloc]  initWithFrame:CGRectZero];
    self.arrowImgView.image = [UIImage imageNamed:@"indent_icon_show"];
    [self addSubview:self.arrowImgView];
}


- (void)loadContent {
    NSDictionary *dic = self.data;
    self.titleLabel.text = [dic objectForKey:@"title"];
    NSString* prefecture =[dic objectForKey:@"content"];
    CGFloat cellHeight = [[self class] cellHeightWithData:prefecture];
    self.titleLabel.frame = CGRectMake(DefaultLeftSpace ,0, 60, cellHeight);
    self.contentLabel.frame = CGRectMake(self.titleLabel.right + 20 , 0, SCREEN_WIDTH - 150, cellHeight);
    self.arrowImgView.frame = CGRectMake(SCREEN_WIDTH - DefaultLeftSpace - 10, (cellHeight - 10)/2.0, 10, 10);
    if (!prefecture || [prefecture isEqualToString:@""])  { // 为空
        self.contentLabel.textColor = RGB(200, 200, 200);
        self.contentLabel.font = [UIFont fontWithName:LYZTheme_Font_Regular size:15];
        self.contentLabel.text =  [dic objectForKey:@"placeHolder"];
    }else{
            self.contentLabel.font =[UIFont fontWithName:LYZTheme_Font_Regular size:16];
            self.contentLabel.textColor = LYZTheme_BlackFontColorFontColor;
            self.contentLabel.text = prefecture;
    }
}

- (void)selectedEvent {
    
    
}

#pragma mark - class property.

+(CGFloat)cellHeightWithData:(id)data{
    NSString *pefecture = data;
    CGFloat height;
    if (pefecture && ![pefecture isEqualToString:@""]) {
        height = [pefecture heightWithFont: [UIFont fontWithName:LYZTheme_Font_Light size:16.0f] constrainedToWidth:SCREEN_WIDTH - 150];
        height += 20;
        if (height < 62) {
            height = 62;
        }
        return height ;
    }else{
        return 62;
    }
    
}
@end
