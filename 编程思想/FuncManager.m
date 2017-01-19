//
//  FuncManager.m
//  编程思想
//
//  Created by Ethank on 2017/1/19.
//  Copyright © 2017年 DY. All rights reserved.
//

#import "FuncManager.h"

@implementation FuncManager
- (instancetype)funcManager:(int(^)(int))funcManager {
    _reslute = funcManager(_reslute);
    return self;
}
@end
