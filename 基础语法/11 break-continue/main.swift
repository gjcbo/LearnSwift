//
//  main.swift
//  11 break-continue
//
//  Created by RaoBo on 2018/1/22.
//  Copyright © 2018年 关键词. All rights reserved.
//

import Foundation

/**
 break :跳出循环，无论循环条件是否还为真都不在执行循环
 continue : 跳出本次循环，如果循环条件为真还会继续执行循环;
 */
var arr:Array<Int> = [1,2,3,4,5,6,7,8,9,10];
for num in arr {
    if num == 7 {
        print("找到了")
        break
    }
    print("没找到")
}
print("----------")


var arr2:Array<Int> = [1,2,3,4,5,6,7,8,9,10];
var count:Int = 0
for num in arr2 {
    if (num % 2) != 0 {
        print("不能被2整除")
        continue
    }
    
    print("能被2整除")
    count += 1
}
print("count:\(count)")
