//
//  CLHProtocolManager.h
//  CLHProtocolManager
//
//  Created by 笔记本 on 2017/11/30.
//  Copyright © 2017年 crd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CLHProtocolManager : NSObject

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol *)protocol;

+ (id)serviceProvideForProtocol:(Protocol *)protocol;

@end
