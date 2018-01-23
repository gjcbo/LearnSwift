//
//  main.swift
//  9 while
//
//  Created by RaoBo on 2018/1/22.
//  Copyright © 2018年 关键词. All rights reserved.
//

//import Foundation
import Cocoa
//http://www.yiibai.com/swift/swift_do_while_loop.html

// MARK:- 一 while
/**
 Swift:
 1. 只能以bool作为条件语句
 */
var i:Int = 0
var sum:Int = 0
while (i <= 5) {
    i += 1
    sum = i
}
print("sum:\(sum)")


// MARK:- 二 do while 循环

var i1:Int = 0
var sum1:Int = 0
repeat {
    i1 += 1
    sum1 = i1
}while (i1 <= 10)
print("sum1:\(sum1)")
