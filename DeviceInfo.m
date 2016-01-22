//
//  DeviceInfo.m
//  MagicSir
//
//  Created by mikewang on 15/11/13.
//  Copyright © 2015年 xiyou. All rights reserved.
//

#import "DeviceInfo.h"

#import <UIKit/UIKit.h>

#import <sys/utsname.h>

#import <sys/sysctl.h>


@implementation DeviceInfo


- (id)init
{
    self=[super init];
    
    if (self) {
        
        UIDevice *device=[UIDevice currentDevice];
        
        self.name=device.name;
        self.systemName=device.systemName;
        self.systemVersion=device.systemVersion;
        
        self.model=device.model;
        self.localizedModel=device.localizedModel;
        
        self.vender=device.identifierForVendor.UUIDString;
        
        self.idiom=device.userInterfaceIdiom;
        
        self.deviceName=[DeviceInfo platformString:[self getDeviceName]];
        
        /*
         
         NSDictionary *deviceInfo=@{@"name":device.name,@"systemName":device.systemName,@"systemVersion":device.systemVersion,@"model":device.model,@"localziedModel":device.localizedModel,@"vender":device.identifierForVendor.UUIDString,@"idiom":[[NSNumber numberWithInt: device.userInterfaceIdiom] stringValue],@"deviceName":[self deviceName]};
         
         NSData *jsonData =  [NSJSONSerialization dataWithJSONObject:deviceInfo options:NSJSONWritingPrettyPrinted error:nil];
         
         if (jsonData) {
         self.deviceInfo=[[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
         }
         else {
         self.deviceInfo=@"";
         }
         
         */
        
        
        
        
    }
    
    return self;
}


-(NSString *)getDeviceName
{
    NSLog(@"[UIDevice currentDevice].model: %@",[UIDevice currentDevice].model);
    NSLog(@"[UIDevice currentDevice].description: %@",[UIDevice currentDevice].description);
    NSLog(@"[UIDevice currentDevice].localizedModel: %@",[UIDevice currentDevice].localizedModel);
    NSLog(@"[UIDevice currentDevice].name: %@",[UIDevice currentDevice].name);
    NSLog(@"[UIDevice currentDevice].systemVersion: %@",[UIDevice currentDevice].systemVersion);
    NSLog(@"[UIDevice currentDevice].systemName: %@",[UIDevice currentDevice].systemName);
    NSLog(@"[UIDevice currentDevice].batteryLevel: %f",[UIDevice currentDevice].batteryLevel);
    
    struct utsname systemInfo;
    uname(&systemInfo);
    NSLog(@"[NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding]: %@",[NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding]);
    NSString *platform = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    
    return platform;
    
}




+ (NSString *)platformString:(NSString *)platform
{
    
    if ([platform isEqualToString:@"AppleTV2,1"]) return @"Apple TV 2G";
    if ([platform isEqualToString:@"AppleTV3,1"]) return @"Apple TV 3";
    if ([platform isEqualToString:@"AppleTV3,2"]) return @"Apple TV 3 (2013)";
    if ([platform isEqualToString:@"AppleTV5,3"]) return @"Apple TV 4 (2015)";
    if ([platform isEqualToString:@"Watch1,1"]) return @"Apple Watch (38mm)";
    if ([platform isEqualToString:@"Watch1,2"]) return @"Apple Watch (42mm)";
    if ([platform isEqualToString:@"iPad1,1"]) return @"iPad 1";
    if ([platform isEqualToString:@"iPad2,1"]) return @"iPad 2 (WiFi)";
    if ([platform isEqualToString:@"iPad2,2"]) return @"iPad 2 (GSM)";
    if ([platform isEqualToString:@"iPad2,3"]) return @"iPad 2 (CDMA)";
    if ([platform isEqualToString:@"iPad2,4"]) return @"iPad 2 (Mid 2012)";
    if ([platform isEqualToString:@"iPad2,5"]) return @"iPad Mini (WiFi)";
    if ([platform isEqualToString:@"iPad2,6"]) return @"iPad Mini (GSM)";
    if ([platform isEqualToString:@"iPad2,7"]) return @"iPad Mini (Global)";
    if ([platform isEqualToString:@"iPad3,1"]) return @"iPad 3 (WiFi)";
    if ([platform isEqualToString:@"iPad3,2"]) return @"iPad 3 (CDMA)";
    if ([platform isEqualToString:@"iPad3,3"]) return @"iPad 3 (GSM)";
    if ([platform isEqualToString:@"iPad3,4"]) return @"iPad 4 (WiFi)";
    if ([platform isEqualToString:@"iPad3,5"]) return @"iPad 4 (GSM)";
    if ([platform isEqualToString:@"iPad3,6"]) return @"iPad 4 (Global)";
    if ([platform isEqualToString:@"iPad4,1"]) return @"iPad Air (WiFi)";
    if ([platform isEqualToString:@"iPad4,2"]) return @"iPad Air (Cellular)";
    if ([platform isEqualToString:@"iPad4,3"]) return @"iPad Air (China)";
    if ([platform isEqualToString:@"iPad4,4"]) return @"iPad Mini 2 (WiFi)";
    if ([platform isEqualToString:@"iPad4,5"]) return @"iPad Mini 2 (Cellular)";
    if ([platform isEqualToString:@"iPad4,6"]) return @"iPad Mini 2 (China)";
    if ([platform isEqualToString:@"iPad4,7"]) return @"iPad Mini 3 (WiFi)";
    if ([platform isEqualToString:@"iPad4,8"]) return @"iPad Mini 3 (Cellular)";
    if ([platform isEqualToString:@"iPad4,9"]) return @"iPad Mini 3 (China)";
    if ([platform isEqualToString:@"iPad5,1"]) return @"iPad Mini 4 (WiFi)";
    if ([platform isEqualToString:@"iPad5,2"]) return @"iPad Mini 4 (Cellular)";
    if ([platform isEqualToString:@"iPad5,3"]) return @"iPad Air 2 (WiFi)";
    if ([platform isEqualToString:@"iPad5,4"]) return @"iPad Air 2 (Cellular)";
    if ([platform isEqualToString:@"iPad6,7"]) return @"iPad Pro (WiFi)";
    if ([platform isEqualToString:@"iPad6,8"]) return @"iPad Pro (Cellular)";
    if ([platform isEqualToString:@"iPhone1,1"]) return @"iPhone 2G";
    if ([platform isEqualToString:@"iPhone1,2"]) return @"iPhone 3G";
    if ([platform isEqualToString:@"iPhone2,1"]) return @"iPhone 3G[S]";
    if ([platform isEqualToString:@"iPhone3,1"]) return @"iPhone 4 (GSM)";
    if ([platform isEqualToString:@"iPhone3,2"]) return @"iPhone 4 (GSM/2012)";
    if ([platform isEqualToString:@"iPhone3,3"]) return @"iPhone 4 (CDMA)";
    if ([platform isEqualToString:@"iPhone4,1"]) return @"iPhone 4[S]";
    if ([platform isEqualToString:@"iPhone5,1"]) return @"iPhone 5 (GSM)";
    if ([platform isEqualToString:@"iPhone5,2"]) return @"iPhone 5 (Global)";
    if ([platform isEqualToString:@"iPhone5,3"]) return @"iPhone 5c (GSM)";
    if ([platform isEqualToString:@"iPhone5,4"]) return @"iPhone 5c (Global)";
    if ([platform isEqualToString:@"iPhone6,1"]) return @"iPhone 5s (GSM)";
    if ([platform isEqualToString:@"iPhone6,2"]) return @"iPhone 5s (Global)";
    if ([platform isEqualToString:@"iPhone7,1"]) return @"iPhone 6+";
    if ([platform isEqualToString:@"iPhone7,2"]) return @"iPhone 6";
    if ([platform isEqualToString:@"iPhone8,1"]) return @"iPhone 6s";
    if ([platform isEqualToString:@"iPhone8,2"]) return @"iPhone 6s+";
    if ([platform isEqualToString:@"iPod1,1"]) return @"iPod touch 1G";
    if ([platform isEqualToString:@"iPod2,1"]) return @"iPod touch 2G";
    if ([platform isEqualToString:@"iPod3,1"]) return @"iPod touch 3";
    if ([platform isEqualToString:@"iPod4,1"]) return @"iPod touch 4";
    if ([platform isEqualToString:@"iPod5,1"]) return @"iPod touch 5";
    if ([platform isEqualToString:@"iPod7,1"]) return @"iPod touch 6";
    
    return platform;
}

@end
