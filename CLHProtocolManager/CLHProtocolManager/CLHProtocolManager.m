//
//  CLHProtocolManager.m
//  CLHProtocolManager
//
//  Created by 笔记本 on 2017/11/30.
//  Copyright © 2017年 crd. All rights reserved.
//

#import "CLHProtocolManager.h"

@interface CLHProtocolManager ()

@property (nonatomic, strong) NSMutableDictionary *serviceProvideSources;

@end

@implementation CLHProtocolManager

+ (CLHProtocolManager *)sharedInstance {
    static CLHProtocolManager *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    
    return instance;
}

- (instancetype)init {
    if (self = [super init]) {
        _serviceProvideSources = [[NSMutableDictionary alloc] init];
    }
    
    return self;
}

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol {
    if (!provide || !protocol) {
        return;
    }
    
    [[self sharedInstance].serviceProvideSources setObject:provide forKey:NSStringFromProtocol(protocol)];
}

+ (id)serviceProvideForProtocol:(Protocol *)protocol {
    
    return [[self sharedInstance].serviceProvideSources objectForKey:NSStringFromProtocol(protocol)];
}

@end
