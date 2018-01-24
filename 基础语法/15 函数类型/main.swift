//
//  main.swift
//  函数类型
//
//  Created by RaoBo on 2018/1/23.
//  Copyright © 2018年 关键词. All rights reserved.
//

import Foundation

func sum(a:Int, b:Int) -> Int {
    return a + b
}

func sub(a:Int, b:Int) -> Int {
    return a - b
}

// 1. 使用var 定义函数 : 也就是函数类型
//var funcP:(Int, Int) -> Int = sum
var funcP:(Int, Int) -> Int
funcP = sum
print("funcP(10,20): \(funcP(10,20))")


// 2. 函数类型可以作为函数的参数
// 一个函数可以作为另一个函数的参数
func calFunc(a:Int, b:Int, hanshu:(Int, Int) -> Int) -> Int {
    return hanshu(a,b)
}
print(calFunc(a: 10, b: 20, hanshu: sum))
print(calFunc(a: 10, b: 20, hanshu: sub))



// 函数类型可以作为 函数的返回值
func max(a:Int, b:Int) -> Int {
    return a > b ? a : b
}
func min(a:Int, b:Int) -> Int {
    return a > b ? a : b
}

func chooseFunc(gainMax:Bool) -> (Int, Int) -> Int {
    return gainMax ? max : min
}

var funcP2:(Int, Int) -> Int = chooseFunc(gainMax: true)
print(funcP2(10,20))




