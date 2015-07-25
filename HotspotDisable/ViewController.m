//
//  ViewController.m
//  HotspotDisable
//
//  Created by Chang YuanYu on 2015/7/23.
//  Copyright (c) 2015年 yu. All rights reserved.
//

#import "ViewController.h"
#import "SCDynamicStore.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"device name:%@",[[UIDevice currentDevice] name]);
    
    SCDynamicStoreRef sc = SCDynamicStoreCreate(NULL, CFSTR("com.apple.wirelessmodemsettings.MISManager"), NULL, NULL);
    NSDictionary* info = (__bridge_transfer NSDictionary*)SCDynamicStoreCreate(sc, CFSTR("com.apple.MobileInternetSharing"));
    CFRelease(sc);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
