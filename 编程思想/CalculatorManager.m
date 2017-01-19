//
//  CalculatorManager.m
//  编程思想
//
//  Created by Ethank on 2017/1/16.
//  Copyright © 2017年 DY. All rights reserved.
// 使用链式编程实现简单的计算器

#import "CalculatorManager.h"

@implementation CalculatorManager
- (CalculatorManager *(^)(float))add {
    return ^CalculatorManager*(float value) {
        _result += value;
        return self;
    };
}

- (CalculatorManager *(^)(float))reduction {
    return ^CalculatorManager *(float value) {
        _result -= value;
        return self;
    };
}

- (CalculatorManager *(^)(float))multip {
    return ^CalculatorManager *(float value) {
        _result *= value;
        return self;
    };
}

- (CalculatorManager *(^)(float))division {
    return ^CalculatorManager *(float value) {
        _result /= value;
        return self;
    };
}

- (float (^)())reslut {
    return ^float() {
        return _result;
    };
}

@end
