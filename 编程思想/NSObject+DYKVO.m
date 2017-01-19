//
//  NSObject+DYKVO.m
//  编程思想
//
//  Created by Ethank on 2017/1/16.
//  Copyright © 2017年 DY. All rights reserved.
//

#import "NSObject+DYKVO.h"
#import <objc/message.h>
#import "DYKVONotify_Person.h"

NSString *const observeKey = @"observer";
@implementation NSObject (DYKVO)
//自定义观察方法
- (void)dy_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context {
    //存储观察对象
        objc_setAssociatedObject(self, (__bridge const void *)(observeKey), observer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    //修改观察对象的isa
        object_setClass(self, [DYKVONotify_Person class]);
}

@end
