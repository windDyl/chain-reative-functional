//
//  DYKVONotify_Person.m
//  编程思想
//
//  Created by Ethank on 2017/1/16.
//  Copyright © 2017年 DY. All rights reserved.
//

#import "DYKVONotify_Person.h"
#import <objc/message.h>
#import "NSObject+DYKVO.h"

extern NSString *const observeKey;
@implementation DYKVONotify_Person
- (void)setName:(NSString *)name {
    [super setName:name];
    //
    //获取观察者
    id objc = objc_getAssociatedObject(self, observeKey);
    //进行观察，一旦方法执行
    [objc observeValueForKeyPath:@"name" ofObject:objc change:nil context:nil];
}
@end
