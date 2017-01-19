//
//  FuncManager.h
//  编程思想
//
//  Created by Ethank on 2017/1/19.
//  Copyright © 2017年 DY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FuncManager : NSObject
@property (nonatomic, assign)float reslute;
- (instancetype)funcManager:(int(^)(int))funcManager;
@end
