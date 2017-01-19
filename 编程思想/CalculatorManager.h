//
//  CalculatorManager.h
//  编程思想
//
//  Created by Ethank on 2017/1/16.
//  Copyright © 2017年 DY. All rights reserved.
// 使用链式编程实现简单的计算器

#import <Foundation/Foundation.h>
@interface CalculatorManager : NSObject
@property (nonatomic, assign)float result;
- (CalculatorManager *(^)(float))add;
- (CalculatorManager *(^)(float))reduction;
- (CalculatorManager *(^)(float))multip;
- (CalculatorManager *(^)(float))division;
- (float(^)())reslut;
@end
