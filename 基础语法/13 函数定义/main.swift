//
//  main.swift
//  13 函数定义
//
//  Created by RaoBo on 2018/1/22.
//  Copyright © 2018年 关键词. All rights reserved.
//

import Foundation

// SWift函数 http://www.yiibai.com/swift/functions.html
//Swift 实现 7 种常见的排序算法  https://www.jianshu.com/p/9d96da7f4ee5

// MARK:- 一 函数的定义和调用
/** 函数完成特定任务的独立的代码段
 返回箭头 (->)  表示有返回值得函数
 */
func sayHello(personName:String) -> String {
    let greeting = "Hello" + personName + "!"
    return greeting
}

print(sayHello(personName: "关键词"))

// MARK:- 二 函数的定义和调用
// 1.有参数、有返回值函数
func halfOpenRangeLength(start:Int, end:Int) -> Int {
    return end - start
}

print(halfOpenRangeLength(start: 3, end: 5))

// 2.无参数、有返回值函数
func sayHelloWorld() -> String {
    return "hello world"
}
print(sayHelloWorld())

// 3. 有参数，无返回值函数
func sayGoodbye(personName:String) {
    print("Goodbye,\(personName)")
}
sayGoodbye(personName: "武汉")

//
//func printAndCount(stringToPrint:String) -> Int {
//    print(stringToPrint)
//
//    return stringToPrint.count
//}

//func printWithoutCounting(stringToPrint:String) {
//
//    let cnt =   printAndCount(stringToPrint: stringToPrint)
//    // Variable 'cnt' was never mutated; consider changing to 'let' constant
//    // 如果你定义个var 变量，而不去改变他，编译器就会提示你考虑用let常量
//
//    print("cnt \(cnt)")
//}

// 4.无返无参
func say() -> Void {
    print("hello world")
}

// 5。嵌套函数
//func showArray(arr:[Int]) {
//    for num in arr {
////        print(num)
//    }
//}
//showArray(arr: [1,3,5,7,9])
print("-----------")

// MARK:- 三 冒泡排序、插入排序、快速排序、选择排序
//Swift 实现 7 种常见的排序算法  https://www.jianshu.com/p/9d96da7f4ee5
// 1.冒泡排序
var disorderArr:[Int] = [6,5,3,1,8,7,2,4];
print("排序前数组:\(disorderArr)")

for i in 0 ..< disorderArr.count {
    for j in 0 ..< (disorderArr.count - i - 1) {
        if (disorderArr[j] > disorderArr[j+1]) {
            let temp = disorderArr[j];
            disorderArr[j] = disorderArr[j+1];
            disorderArr[j+1] = temp
        }
    }
}

print("排序后数组:\(disorderArr)")

//2.插入排序





