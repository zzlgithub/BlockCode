//
//  CalculateManager.h
//  LianShi
//
//  Created by zhangzhenglong on 2017/6/9.
//  Copyright © 2017年 zhangzhenglong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculateManager : NSObject
@property (nonatomic,copy)NSString * name;
@property (nonatomic,assign)int result;
- (CalculateManager *(^)(int num))add;
- (CalculateManager *(^)(int num))multiply;
- (CalculateManager *(^)(int num))minus;
- (CalculateManager *(^)(int num))div;

/**
 *  Block 返回计算结果
 */
@property (nonatomic,copy)int (^ResultBlock)(int a ,int b);
@end


@interface NSObject (Calculate)
+ (int)zzl_makeCalculates:(void(^)(CalculateManager *))block;
@end

