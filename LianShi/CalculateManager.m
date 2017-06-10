//
//  CalculateManager.m
//  LianShi
//
//  Created by zhangzhenglong on 2017/6/9.
//  Copyright © 2017年 zhangzhenglong. All rights reserved.
//

#import "CalculateManager.h"
@interface CalculateManager (){
    @public
    NSString *_name;
}
@end

@implementation CalculateManager

- (int (^)(int, int))ResultBlock{
    return  ^int(int x, int y){
        int sum = x + y + _result;
        return sum;
    };
}

- (CalculateManager *(^)(int))add{
    return ^CalculateManager *(int num){
        self.result += num;
        return self;
    };
}

- (CalculateManager *(^)(int))minus
{
    return ^CalculateManager *(int num){
        self.result -= num;
        return self;
    };
}

- (CalculateManager * (^)(int num))div{
    return ^CalculateManager *(int num){
        self.result /= num;
        return self;
    };
}

- (CalculateManager * (^)(int num))multiply{
    return ^CalculateManager *(int num){
        self.result *= num;
        return self;
    };
}
@end

@implementation NSObject (Calculate)

+ (int)zzl_makeCalculates:(void(^)(CalculateManager *))block {
    
    CalculateManager *manager = [[CalculateManager alloc] init];
    block(manager);
    return manager.result;
}
@end

