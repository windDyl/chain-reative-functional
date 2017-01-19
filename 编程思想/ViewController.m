//
//  ViewController.m
//  编程思想
//
//  Created by Ethank on 2017/1/16.
//  Copyright © 2017年 DY. All rights reserved.
//

#import "ViewController.h"
#import "CalculatorManager.h"

#import "Person.h"
#import "NSObject+DYKVO.h"

#import "FuncManager.h"

@interface ViewController ()

@property (nonatomic, strong)Person *person;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //链式编程
//    [self chainProgramming];
    //kvo
//    [self dy_KVO];
    //函数式编程
    [self functional];
}
//链式编程
- (void)chainProgramming {
    CalculatorManager *calculatorMgr = [[CalculatorManager alloc] init];
    int reslut = calculatorMgr.add(5).multip(4).reduction(12).division(3).reslut();
    NSLog(@"%zd", reslut);
}
//函数式编程
- (void)functional {
    FuncManager *funcManager = [[FuncManager alloc] init];
    [funcManager funcManager:^int (int reslute) {
        reslute += 5;
        reslute *= 4;
        return reslute;
    }];
    NSLog(@"%f", [funcManager reslute]);
}

//kvo
/*
 本质是检测setter方法有没有调用
 */
//系统实现
- (void)KVO {
    Person *person = [[Person alloc] init];
    [person addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:nil];
    _person = person;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    NSLog(@"%@", _person.name);
}

//自定义实现
- (void)dy_KVO {
    Person *person = [[Person alloc] init];
    //注册观察
    [person dy_addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:nil];
    _person = person;
}



- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    static int i = 0;
    i++;
    _person.name = [NSString stringWithFormat:@"%@_%02zd", @"小叮当", i];
}


@end
