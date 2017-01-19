//
//  NSObject+DYKVO.h
//  编程思想
//
//  Created by Ethank on 2017/1/16.
//  Copyright © 2017年 DY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (DYKVO)
//自定义观察方法
- (void)dy_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context;
@end
