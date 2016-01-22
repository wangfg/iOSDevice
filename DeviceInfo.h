//
//  DeviceInfo.h
//  MagicSir
//
//  Created by mikewang on 15/11/13.
//  Copyright © 2015年 xiyou. All rights reserved.
//

#import "JSONModel.h"

@interface DeviceInfo : JSONModel

@property (nonatomic,strong) NSString *name;

@property (nonatomic,strong) NSString *systemName;
@property (nonatomic,strong) NSString *systemVersion;
@property (nonatomic,strong) NSString *model;
@property (nonatomic,strong) NSString *localizedModel;
@property (nonatomic,strong) NSString *vender;
@property  NSInteger idiom;
@property (nonatomic,strong) NSString *deviceName;

+ (NSString *)platformString:(NSString *)platform;

@end
